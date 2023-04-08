vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.titlestring = 'nvim | %f %r %m'
vim.opt.title = true
vim.opt.titlelen = 120

vim.bo.softtabstop = 2

vim.wo.number = true

require("keybinds")

require("manager")
require("plugins")
