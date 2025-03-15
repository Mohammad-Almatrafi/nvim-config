return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                esure_installed = {
                    "lua_ls",
                    "hdl_checker",
                    "vhdl_ls",
                    "bash_ls",
                    "svlangserver",
                    "svls",
                    "clangd",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.hdl_checker.setup({})
        end,
    },
}
