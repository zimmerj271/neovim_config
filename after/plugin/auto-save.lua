require("auto-save").setup{
   debounce_delay =  300000
}

-- set key-binding to turn auto-save on/off
vim.api.nvim_set_keymap("n", "<leader>as", ":ASToggle<CR>", {})
