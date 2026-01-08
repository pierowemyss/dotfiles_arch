return {
    {
        "williamboman/mason-lspconfig.nvim",
        opts = {
            -- list of servers for mason to install
            ensure_installed = {
                "ruff",
                "html",
                "lua_ls",
                "pyright",
                "fortls",
                "ltex",
                "matlab_ls",
                "arduino_language_server",
                "clangd",
                "jdtls",
            },
        },
        dependencies = {
            {
                "williamboman/mason.nvim",
                opts = {
                    ui = {
                        icons = {
                            package_installed = "✓",
                            package_pending = "➜",
                            package_uninstalled = "✗",
                        },
                    },
                },
            },
            "neovim/nvim-lspconfig",
        },
    },
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                -- "isort", -- python formatter
                -- "black", -- python formatter
                -- "pylint",
                "fprettify", -- fortran formatter?
                -- "clang-format",
            },
        },
        dependencies = {
            "williamboman/mason.nvim",
        },
    },
}
