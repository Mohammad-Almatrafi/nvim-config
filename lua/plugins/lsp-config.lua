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
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.verible.setup({})
			lspconfig.vhdl_ls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.bashls.setup({})
		end,
	},
}
