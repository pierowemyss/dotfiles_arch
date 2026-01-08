return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")

    -- begin fortran thing
    local gfortran_diagnostic_args = { "-Wall", "-Wextra", "-fmax-errors=5" }

	lint.linters_by_ft = {       -- add other linters here too
	   fortran = {"gfortran"},
       -- python = {"python"},
	}

	local pattern = "^([^:]+):(%d+):(%d+):%s+([^:]+):%s+(.*)$"
	local groups = { "file", "lnum", "col", "severity", "message" }
	local severity_map = {
	   ["Error"] = vim.diagnostic.severity.ERROR,
	   ["Warning"] = vim.diagnostic.severity.WARN,
	}
	local defaults = { ["source"] = "gfortran" }

	local required_args = { "-fsyntax-only", "-fdiagnostics-plain-output" }
	local args = vim.list_extend(required_args, gfortran_diagnostic_args)

	lint.linters.gfortran = {
	   cmd = "gfortran",
	   stdin = false,
	   append_fname = true,
	   stream = "stderr",
	   env = nil,
	   args = args,
	   ignore_exitcode = true,
	   parser = require("lint.parser").from_pattern(pattern, groups, severity_map, defaults),
	}
    -- END fortran thing

    -- The next three lines are a copy of what's above
    -- lint.linters_by_ft = {
    --   -- python = { "pylint" },
    -- }

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set("n", "<leader>l", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
