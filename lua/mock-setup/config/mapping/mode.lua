local set_keymap = vim.api.nvim_set_keymap
set_keymap('n', 'i', '<Cmd>lua vim.api.nvim_feedkeys("i", "n", false)<CR>', { noremap = true, silent = true })
set_keymap('n', 'a', '<Cmd>lua vim.api.nvim_feedkeys("a", "n", false)<CR>', { noremap = true, silent = true })
set_keymap('n', '<ESC>', '<Cmd>lua vim.api.nvim_feedkeys("<esc>", "n", false<CR>)', {noremap = true, silent = true } )
set_keymap('n', 'ZZ', '<cmd>normal! ZZ<CR>', { noremap = true, silent = true })
vim.keymap.set('i', '<ESC>', function()
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), 'n', false)
end)

