local server_settings = require("config.lsp.server-settings")

return {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
        "williamboman/mason.nvim",
        "hrsh7th/nvim-cmp",
    },
    opts = {},
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup_handlers({
            function(server_name)
                require("lspconfig")[server_name].setup({
                    capabilities = capabilities,
                    settings = server_settings[server_name],
                })
            end,
        })
    end,
}
