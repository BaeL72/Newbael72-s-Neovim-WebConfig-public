return {
	"nvim-neotest/neotest",
	dependencies = {
		"nvim-neotest/nvim-nio",
		"nvim-lua/plenary.nvim",
		"antoinemadec/FixCursorHold.nvim",
		"nvim-treesitter/nvim-treesitter",
		"nvim-neotest/neotest-jest",
	},
	config = function()
		local neotest = require("neotest")

		neotest.setup({
			adapters = {
				require("neotest-jest")({
					jestCommand = "npm test --",
					env = { CI = true },
					cwd = function()
						return vim.fn.getcwd()
					end,
				}),
			},
			discovery = {
				enabled = true,
			},
			diagnostic = {
				enabled = true,
			},
			status = {
				virtual_text = true,
				signs = true,
			},
		})
	end,
}
