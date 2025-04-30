local bind_key = vim.keymap.set
bind_key('n', 'i', '<Cmd>lua vim.api.nvim_feedkeys("i", "n", false)<CR>', { noremap = true, silent = true })
bind_key('n', 'a', '<Cmd>lua vim.api.nvim_feedkeys("a", "n", false)<CR>', { noremap = true, silent = true })
bind_key('n', '<ESC>', '<Cmd>lua vim.api.nvim_feedkeys("<esc>", "n", false<CR>)', {noremap = true, silent = true } )
bind_key('n', 'ZZ', '<cmd>normal! ZZ<CR>', { noremap = true, silent = true })
bind_key('i', '<ESC>', function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), 'n', false) end)

