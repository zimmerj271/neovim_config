vim.g.mapleader = " " -- define mapleader as space
vim.g.maplocalleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- remap Explore as <leader>pv
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- remap no highlight to <leader>nh
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y') -- remap copy to clipboard

-- Diagnostic keyamps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror message" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Split navigation, see `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left split" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right split" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper split" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower split" })

-- Toggle Text Wrapping
vim.keymap.set("n", "<leader>tw", ":set wrap!<CR>", { noremap = true, silent = true })

-- Show hover over for LSP definitions
vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, { noremap = true, silent = true, buffer = true })
