vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 4 -- 4 spaces for tabs
opt.shiftwidth = 4 -- 4 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- assumes case-sensitive when including mixed case in search

opt.cursorline = true

-- turn on termguicolors for some colorschemes to work
-- (has to be true color terminal)
opt.termguicolors = false
opt.background = "dark" -- light+dark colorschemes will be dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line, or insertmode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- enable text wrapping for certain filetypes
vim.api.nvim_create_autocmd('BufEnter', {
  pattern = {
      '*.md',
      '*.tex',
      '*.sty',
      '*.txt',
  },
  group = group,
  command = 'setlocal wrap'
})
