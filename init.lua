vim.opt.swapfile = false
vim.o.tabstop = 4
vim.o.expandtab = false
vim.o.softtabstop = 0
vim.o.shiftwidth = 4
vim.o.nowrap = true
vim.o.hlsearch = true
vim.o.number = true
vim.opt.mouse = 'a'
require('plugins')
require('custom_settings.remap')
vim.cmd("colorscheme gruvbox")
