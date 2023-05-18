require('chetan.plugins')

require("mason").setup()
require("mason-lspconfig").setup()

require('chetan.lsp')
require('chetan.cmp')

require('telescope').setup()

require('chetan.treesitter')
require('chetan.gitsigns')

require('chetan.keymaps')
require('chetan.theme')
require('chetan.lualine')
require('chetan.formatter')
