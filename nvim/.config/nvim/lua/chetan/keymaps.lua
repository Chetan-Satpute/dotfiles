-- LSP
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

-- Conform
local format_function = function()
	require("conform").format({
		lsp_fallback = true,
	})
end

vim.keymap.set("n", "<space>f", format_function)

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", telescope.git_files)
vim.keymap.set("n", "<leader>lg", telescope.live_grep)
vim.keymap.set("n", "<leader>b", telescope.buffers)

-- Nvim Tree
vim.keymap.set("n", "<leader>e", "<cmd> NvimTreeFocus <CR>")

-- Custom
vim.keymap.set("n", "<leader>w", "<c-w>")
