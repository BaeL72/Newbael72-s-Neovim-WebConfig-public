local map = vim.keymap.set
local builtin = require("telescope.builtin")
local neotest = require("neotest")

--TELESCOPE KEYMAPS

map("n", "<leader>lg", builtin.live_grep, { desc = "Telescope live grep" })
map("n", "<leader>bb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>ht", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>fa", builtin.current_buffer_fuzzy_find, { desc = "Telescope fuzzy find in current buffer" })
map("n", "<leader>ac", builtin.commands, { desc = "Telescope Commands" })
map("n", "<leader>gc", builtin.git_commits, { desc = "Git Commits" })
map("n", "<leader>gB", builtin.git_bcommits, { desc = "Git Bcommits" })
map("n", "<leader>gb", builtin.git_branches, { desc = "Git Branches" })
map("n", "<leader>gs", builtin.git_status, { desc = "Git Status" })
map("n", "<leader>gh", builtin.git_stash, { desc = "Git Stash" })
map("n", "ts", builtin.treesitter, { desc = "Tree Sitter" })
map("n", "<leader>ak", builtin.keymaps, { desc = "Available Keymaps" })
map("n", "<leader>ld", "<cmd>w | Telescope diagnostics <cr>", { desc = "Diagnostics List" })

--FILE_BROWSER KEYMAP

map("n", "<leader>ff", ":Telescope file_browser<cr>", { silent = true }, { desc = "Telescope File Browser" })

--HOP NVIM KEYMAPS

map({ "n", "v" }, "m", "<cmd>HopLine<cr>", { desc = "Hop Line" })
map({ "n", "v" }, "F", "<cmd>HopAnywhere<cr>", { desc = "Hop Anywhere" })
map({ "n", "v" }, "<leader><space>", "<cmd>HopWord<cr>", { desc = "Hop Word" })

--LSP KEYMAPS

local lb = vim.lsp.buf

map({ "n", "v" }, "ca", vim.lsp.buf.code_action, { desc = "Code Actions" })
map("n", "gd", vim.lsp.buf.definition, { desc = "Go To Definition" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go To Implementation" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename" })
map("n", "gt", lb.type_definition, { desc = "Go To Type Definition" })
map("n", "gr", lb.references, { desc = "References" })

--NEOTEST KEYMAPS

map("n", "<leader>tt", function()
	neotest.run.run()
end, { desc = "Run nearest test" })
map("n", "<leader>tf", function()
	neotest.run.run(vim.fn.expand("%"))
end, { desc = "Run current file tests" })

map("n", "<leader>ta", function()
	neotest.run.run(vim.fn.getcwd())
end, { desc = "Run all tests" })

map("n", "<leader>ts", function()
	neotest.summary.toggle()
end, { desc = "Toggle test summary" })

map("n", "<leader>to", function()
	neotest.output.open({ enter = true })
end, { desc = "Show test output" })

map("n", "<leader>tO", function()
	neotest.output_panel.toggle()
end, { desc = "Toggle test output panel" })

map("n", "<leader>tS", function()
	neotest.run.stop()
end, { desc = "Stop test" })

map("n", "<leader>tw", function()
	neotest.watch.toggle(vim.fn.expand("%"))
end, { desc = "Toggle watch mode" })

map("n", "[t", function()
	neotest.jump.prev({ status = "failed" })
end, { desc = "Jump to previous failed test" })

map("n", "]t", function()
	neotest.jump.next({ status = "failed" })
end, { desc = "Jump to next failed test" })
