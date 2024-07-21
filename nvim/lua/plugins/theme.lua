
return {
	{ "nvim-lua/plenary.nvim", lazy = true },
	{
	    "NvChad/base46",
	    lazy = true,
	    build = function()
	      require("base46").load_all_highlights()
	    end,
	},
	{
	    "NvChad/ui",
	    config = function()
	      require "nvchad"
	    end,
	},
	{
	    "nvim-tree/nvim-web-devicons",
	    lazy = false,
	    opts = function()
	      return { override = require "nvchad.icons.devicons" }
	    end,
	    config = function(_, opts)
	      dofile(vim.g.base46_cache .. "devicons")
	      require("nvim-web-devicons").setup(opts)
	    end,
	},
}
