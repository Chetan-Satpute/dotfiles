-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Theme
	use("folke/tokyonight.nvim")
	use({ "catppuccin/nvim", as = "catppuccin" })

	-- Status line
	use("nvim-lualine/lualine.nvim")

	-- Lsp
	use("williamboman/mason.nvim")
	use("neovim/nvim-lspconfig")

	-- cmp
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	-- null-ls
	use("jose-elias-alvarez/null-ls.nvim")

	-- Plenary
	use("nvim-lua/plenary.nvim")

	-- Git Fugitive
	use("tpope/vim-fugitive")

	-- Telescope
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- Vim Be Good
	use("ThePrimeagen/vim-be-good")

	-- Treesitter
	use("nvim-treesitter/nvim-treesitter")
	use("p00f/nvim-ts-rainbow")

	-- Dev Icons
	use("kyazdani42/nvim-web-devicons")

	-- Git signs
	use("lewis6991/gitsigns.nvim")
end)
