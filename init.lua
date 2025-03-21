--[[
this is the file that will execute in the begining of launching vim
it import every plugin and keymaps
]]
require("config.keymaps")
require("config.lazy")

vim.cmd.colorscheme("catppuccin")

require("config.plugins-keymaps")
require("config.vim-options")


