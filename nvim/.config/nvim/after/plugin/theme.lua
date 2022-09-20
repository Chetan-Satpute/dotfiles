--[[
require("tokyonight").setup({
	-- your configuration comes here
	-- or leave it empty to use the default settings
	style = "night", -- The theme comes in three styles, `storm`, a darker variant `night` and `day`
	transparent = false, -- Enable this to disable setting the background color
	terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
	styles = {
		-- Style to be applied to different syntax groups
		-- Value is any valid attr-list value `:help attr-list`
		comments = "italic",
		keywords = "italic",
		functions = "NONE",
		variables = "NONE",
		-- Background styles. Can be "dark", "transparent" or "normal"
		sidebars = "dark", -- style for sidebars, see below
		floats = "dark", -- style for floating windows
	},
	sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
	day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
	hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
	dim_inactive = false, -- dims inactive windows
	lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

	--- You can override specific color groups to use other groups or a hex color
	--- fucntion will be called with a ColorScheme table
	on_colors = function(colors) end,

	--- You can override specific highlights to use other groups or a hex color
	--- fucntion will be called with a Highlights and ColorScheme table
	on_highlights = function(highlights, colors)
		highlights.WinSeparator = {
			bg = "None",
			fg = colors.fg_dark,
		}
	end,
})

vim.g.tokyonight_style = "night"
vim.opt.background = "dark"
]]

local mocha = require("catppuccin.palettes").get_palette "mocha"

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha


require("catppuccin").setup({
	integrations = {
		cmp = true,
		gitsigns = true,
		telescope = true,
		treesitter = true,
		treesitter_context = false,
		ts_rainbow = false,
		native_lsp = {
			enabled = true,
			virtual_text = {
				errors = { "italic" },
				hints = { "italic" },
				warnings = { "italic" },
				information = { "italic" },
			},
			underlines = {
				errors = { "underline" },
				hints = { "underline" },
				warnings = { "underline" },
				information = { "underline" },
			},
		},
	},
  highlight_overrides = {
		mocha = {
			WinSeparator = { bg = "NONE", fg = mocha.blue },
		},
	},
})

vim.cmd([[colorscheme catppuccin]])
