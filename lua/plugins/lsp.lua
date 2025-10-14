return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = {
					exclude = {
						"ts_ls",
					},
				},
			})
		end,
	},
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup({
				ensure_installed = {
					"js-debug-adapter",
					"typescript-language-server",
				},
			})
		end,
	},
	{
		"pmizio/typescript-tools.nvim",
		dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
		ft = {
			"typescript",
			"typescriptreact",
			"javascript",
			"javascriptreact",
		},
		config = function()
			require("typescript-tools").setup({})
		end,
	},
}
