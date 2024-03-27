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
	-- Theme
	{ "rebelot/kanagawa.nvim", lazy = false },
	{ "folke/tokyonight.nvim", lazy = false },
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- LSP
	{ "williamboman/mason.nvim" },
	{ "neovim/nvim-lspconfig" },
	{ "williamboman/mason-lspconfig.nvim" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip", lazy = false },

	-- Git
	{ "lewis6991/gitsigns.nvim" },
	{ "tpope/vim-fugitive", lazy = false },

	-- Tools
	{ "nvim-treesitter/nvim-treesitter" },
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
	{ "stevearc/conform.nvim" },
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
