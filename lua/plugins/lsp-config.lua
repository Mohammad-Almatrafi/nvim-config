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
                    "verible",
                    "vhdl_ls",
                    "clangd",
                    "bashls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = capabilities
            })
            lspconfig.verible.setup({
                capabilities = capabilities,
                cmd = { 'verible-verilog-ls', '--rules_config_search' },
            })
            lspconfig.vhdl_ls.setup({
                capabilities = capabilities
            })
            lspconfig.clangd.setup({
                capabilities = capabilities
            })
            lspconfig.bashls.setup({
                capabilities = capabilities
            })

            vim.api.nvim_create_autocmd('FileType', {
                -- This handler will fire when the buffer's 'filetype' is "systemverilog" or "verilog"
                pattern = { 'verilog', 'systemverilog' },
                callback = function()
                    vim.lsp.start({
                        name = 'verible',
                        cmd = { 'verible-verilog-ls', '--rules_config_search' },
                    })
                end,
            })


            vim.lsp.config('verible', {
                filetypes = { 'verilog', 'systemverilog' },
            })
        end,

    },
}
