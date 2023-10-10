local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
	{ "rebelot/kanagawa.nvim" },
	{ "catppuccin/nvim", name = "catppuccin", lazy = false },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "nvim-treesitter/nvim-treesitter" },
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "stevearc/conform.nvim" },

	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "windwp/nvim-ts-autotag" },
	{ "lewis6991/gitsigns.nvim" },
	{ "tpope/vim-fugitive", lazy = false },
	{ "nvim-lualine/lualine.nvim" },
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},
}

local opts = {
	defaults = {
		lazy = true,
	},
}

require("lazy").setup(plugins, opts)

require("chetan.plugins.configs.kanagawa")
require("chetan.plugins.configs.telescope")
require("chetan.plugins.configs.treesitter")
require("chetan.plugins.configs.mason")
require("chetan.plugins.configs.conform")
require("chetan.plugins.configs.cmp")
require("chetan.plugins.configs.gitsigns")
require("chetan.plugins.configs.lualine")
require("chetan.plugins.configs.nvim_tree")
require("chetan.plugins.configs.comment")
