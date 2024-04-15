local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {}) -- find Project File (all file search)
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) -- git file search
vim.keymap.set('n', '<leader>ps', function()
   builtin.grep_string({ search = vim.fn.input("grep > ")})
end) -- find Project Search
vim.keymap.set('n', '<leader>fg', ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
