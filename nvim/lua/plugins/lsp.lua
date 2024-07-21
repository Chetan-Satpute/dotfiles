return {
	{ -- Autocompletion
		'hrsh7th/nvim-cmp',
		event = 'InsertEnter',
		dependencies = {
			-- Snippet Engine & its associated nvim-cmp source
			{
				'L3MON4D3/LuaSnip',
				build = 'make install_jsregexp',
				dependencies = {},
			},
			'saadparwaiz1/cmp_luasnip',
			"hrsh7th/cmp-nvim-lua",
			'hrsh7th/cmp-nvim-lsp',
			"hrsh7th/cmp-buffer",
			'hrsh7th/cmp-path',
		},
	},
	{ -- LSP Configuration & Plugins
		'neovim/nvim-lspconfig',
		dependencies = {
			{ 'williamboman/mason.nvim', config = true },
			'williamboman/mason-lspconfig.nvim',
		},
	},
}
