vim.g.mapleader = " " -- define mapleader as space
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- remap Explore as <leader>pv
vim.keymap.set("n", "<leader>nh", ":noh<CR>") -- remap no highlight to <leader>nh
vim.keymap.set({"n", "v"}, "<leader>y", "\"+y") -- remap copy to clipboard
