return {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ":TSUpdate",
    opts = function()
        return require("config.treesitter")
    end,
    config = function(_, opts)
        require("nvim-treesitter.configs").setup(opts)
    end,
    dependencies = {
        {"windwp/nvim-ts-autotag", lazy = false, opts = {}},
        "nvim-treesitter/nvim-treesitter-context",
    }
}
