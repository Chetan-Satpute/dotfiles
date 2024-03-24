local conform = require("conform")

conform.setup({
	-- Map of filetype to formatters
	formatters_by_ft = {
		lua = { "stylua" },
		javascript = { "prettier" },
		typescript = { "prettier" },
		javascriptreact = { "prettier" },
		typescriptreact = { "prettier" },
		html = { "prettier" },
		css = { "prettier" },
		-- Use the "*" filetype to run formatters on all filetypes.
		["*"] = {},
		-- Use the "_" filetype to run formatters on filetypes that don't
		-- have other formatters configured.
		["_"] = {},
	},
})

local M = {}

M.conform_format = function()
	conform.format({ lsp_fallback = true })
end

return M
