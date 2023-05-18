
vim.g.mapleader = " "

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>b', builtin.buffers, {})

vim.keymap.set('n', '<leader>f', '<cmd>FormatWriteLock<CR>', {})

