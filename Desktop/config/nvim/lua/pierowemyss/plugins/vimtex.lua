return {
    'lervag/vimtex',
    lazy = false,
    -- ft = 'tex',
    config = function()
        -- vim.g.vimtex_view_method = 'zathura'
        vim.g.vimtex_view_method = 'skim'
        -- vim.g.vimtex_compiler_engine = 'lualatex'
        vim.g.vimtex_compiler_latexmk_engines = { _ = 'lualatex' }
        -- vim.g.maplocalleader = ','
    end,
}
