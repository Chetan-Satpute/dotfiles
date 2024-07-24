return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    opts = function()
        return require("config.lualine")
    end,
}
