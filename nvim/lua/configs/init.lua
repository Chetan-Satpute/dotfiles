require("configs.kanagawa")
require("configs.lualine")
require("configs.treesitter")
require("configs.telescope")
require("configs.mason")
require("configs.gitsigns")
require("configs.comment")
local conform_configs = require("configs.conform")

local M = {}

M.conform_format = conform_configs.conform_format

return M
