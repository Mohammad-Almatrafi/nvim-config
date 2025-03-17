--[[
this is the file that will execute in the begining of launching vim
it import every plugin and keymaps
]]
require("config.vim-options")
require("config.keymaps")
require("config.lazy")
require("config.plugins-keymaps")

vim.cmd.colorscheme("catppuccin")
