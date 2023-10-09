local servers = require('chetan.lsp.servers');

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = vim.tbl_keys(servers)
})
