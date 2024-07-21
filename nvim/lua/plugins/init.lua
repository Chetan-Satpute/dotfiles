return {
	{ "lewis6991/gitsigns.nvim", opts = require("config.gitsigns") },
	{ "tpope/vim-fugitive", lazy = false },
	{ "nvim-treesitter/nvim-treesitter"},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = require("config.telescope"),
	},
	{ "stevearc/conform.nvim", opts = require("config.conform") },
	{
		"numToStr/Comment.nvim",
		opts = require("config.comment"),
		lazy = false,
	},
}
