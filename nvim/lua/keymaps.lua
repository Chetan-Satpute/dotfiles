local configs = require('configs');
local luasnip = require('luasnip');

-- Telescope
local telescope = require("telescope.builtin")

vim.keymap.set("n", "<C-p>", telescope.git_files)
vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
vim.keymap.set("n", "<leader>lg", telescope.live_grep, {})

-- LSP
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist)

-- Conform
vim.keymap.set("n", "<leader>f", configs.conform_format)

-- Custom
vim.keymap.set("n", "<leader>w", "<c-w>")
vim.keymap.set("n", "<leader>s", "<cmd>w<cr>")

vim.keymap.set("n", "<leader>j", "<cmd>lnext<cr>");
vim.keymap.set("n", "<leader>k", "<cmd>lprev<cr>");

vim.keymap.set({"i"}, "<C-K>", function() luasnip.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() luasnip.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() luasnip.jump(-1) end, {silent = true})
