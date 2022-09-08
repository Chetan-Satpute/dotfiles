local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>e', '<cmd>e<CR>', opts)
vim.keymap.set('n', '<leader>y', "\"+y<CR>", opts)
vim.keymap.set('v', '<leader>y', "\"+y<CR>", opts)
vim.keymap.set('n', '<leader>p', "\"+p<CR>", opts)
vim.keymap.set('n', '<leader>s', "<cmd>w<CR>", opts)

-- Telescope
vim.keymap.set('n', '<C-p>', "<cmd>Telescope find_files<CR>", opts)

-- Lsp
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)

