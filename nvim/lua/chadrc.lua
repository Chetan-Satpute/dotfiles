---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "kanagawa",
	tabufline = {
		enabled = false,
	},
	cmp = {
		icons = true,
		lspkind_text = true,
		style = "flat_light", -- default/flat_light/flat_dark/atom/atom_colored
	},

	base46 = {
		integrations = {
			"cmp",
		},
	},
}

return M

