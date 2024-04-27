local go = vim.o -- variable to hold global opt vim.o
local opt = vim.opt -- variable to hold vim.opt

-- Nerd Font installed on system
vim.g.have_nerd_font = true

-- Enable highlight string for search
go.hlsearch = true

-- Enable numbered lines
go.number = true

-- Turn off wraping
opt.wrap = false

-- Enable mouse mode for normal and visual modes
opt.mouse = "nv"

-- Configure how new splits are opened
opt.splitright = false -- [C-w]v
opt.splitbelow = true -- [C-w]s

-- Min number of lines to always keep above/below cursor
opt.scrolloff = 10

-- Turn off swap file
opt.swapfile = false
