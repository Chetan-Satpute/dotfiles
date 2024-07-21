vim.keymap.set("n", "<leader>w", "<C-w>", { desc = "Leader w to run window commands" })

-- Conform
vim.keymap.set("n", "<leader>fm", function()
	require("conform").format({ lsp_fallback = true })
end)

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", telescope.find_files)
vim.keymap.set("n", "<leader>lg", telescope.live_grep, {})

-- LSP
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

