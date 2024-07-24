return {
    { "lewis6991/gitsigns.nvim", opts = require("config.gitsigns") },
    { "tpope/vim-fugitive", lazy = false },
    {
        "numToStr/Comment.nvim",
      opts = function()
            return require("config.comment")
        end,
    },
}
