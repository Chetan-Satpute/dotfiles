vim.g.base46_cache = vim.fn.stdpath("data") .. "/base46_cache/"

require("options")

require("config.lazy")
require("config.lsp")
require("config.cmp")
require("config.treesitter")

require("base46").load_all_highlights()
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
dofile(vim.g.base46_cache .. "cmp")
dofile(vim.g.base46_cache .. "treesitter")

require("mappings")
