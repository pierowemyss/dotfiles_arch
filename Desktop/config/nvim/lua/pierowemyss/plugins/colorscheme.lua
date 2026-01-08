return {
	{
		"nyoom-engineering/oxocarbon.nvim",
		dependencies = "rktjmp/hotpot.nvim",
		priority = 1000,
		config = function()
			vim.opt.background = "dark" -- set this to dark or light
			vim.cmd("colorscheme oxocarbon")
			vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
			vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "Visual", { fg = "#585858", bg = "#3ddbd9" })
			vim.api.nvim_set_hl(0, "LineNr", { fg = "#78a9ff", bg = "none" })
			vim.api.nvim_set_hl(0, "Comment", { fg = "NvimLightGreen", italic = true })
			vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ee5369", bg = "none" })
			vim.api.nvim_set_hl(0, "VertSplit", { bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "none", bg = "none" })
			vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#ee5369", bg = "none" })
			vim.api.nvim_set_hl(0, "BufferLineTabSeparator", { bg = "none" })
			vim.api.nvim_set_hl(0, "CursorLine", { bg = "#161616" })
			vim.api.nvim_set_hl(0, "WinSeparator", { bg = "none" })
			vim.api.nvim_set_hl(0, "TreesitterContextbottom", { fg = "#42be65", underline = true })
			vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { fg = "#42be65" })
			vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#42be65", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#42be65", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopePromptNormal", { fg = "#f2f2f2", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#33b1ff", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopePromptTitle", { fg = "#33b1ff", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { fg = "#ee5369", bg = "none" })
			vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { fg = "#ee5369", bg = "none" })
			vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#42be65", bg = "none" })
			vim.api.nvim_set_hl(0, "FloatTitle", { fg = "#ee5369", bg = "none" })
			-- vim.api.nvim_set_hl(0, "lualine_a_normal", { fg = "#f2f4f8", bg = "#33b1ff" })
			-- vim.api.nvim_set_hl(0, "lualine_a_insert", { fg = "#f2f4f8", bg = "#42be65" })
			-- vim.api.nvim_set_hl(0, "lualine_a_visual", { fg = "#f2f4f8", bg = "#be95ff" })
			-- vim.api.nvim_set_hl(0, "lualine_a_command", { fg = "#f2f4f8", bg = "#42be65" })
			-- vim.api.nvim_set_hl(0, "lualine_a_replace", { fg = "#f2f4f8", bg = "#ee5369" })
		end,
	},
	-- {
	--     "rockyzhang24/arctic.nvim",
	--     dependencies = { "rktjmp/lush.nvim" },
	--     -- name = "arctic",
	--     branch = "v2",
	--     priority = 1000,
	--     config = function()
	--       vim.cmd("colorscheme arctic")
	--     end
	-- },
}
