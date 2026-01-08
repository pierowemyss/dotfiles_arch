require("pierowemyss.core")
require("pierowemyss.lazy")

-- vim.cmd([[colorscheme default]])  -- Preserves terminal theme

-- vim.treesitter.language.add("python", { path = "/usr/local/bin/python3" })

vim.api.nvim_set_keymap("t", "<Leader><ESC>", "<C-\\><C-n>", { noremap = true })
