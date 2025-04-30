local bind_key = vim.keymap.set

bind_key('n', 'd', '<left>', { noremap = true, silent = true })
bind_key('n', 'n', '<right>', { noremap = true, silent = true })
bind_key('n', 'h', '<cmd>lua vim.api.nvim_command("normal! gj")<CR>', { noremap = true, silent = true })
bind_key('n', 't', '<cmd>lua vim.api.nvim_command("normal! gk")<CR>', { noremap = true, silent = true })
-- ctrl + dnht to move in insert mode 
bind_key('i', '<c-d>', '<left>', { noremap = true, silent = true })
bind_key('i', '<c-n>', '<right>', { noremap = true, silent = true })
bind_key('i', '<c-h>', '<cmd>lua vim.api.nvim_command("normal! gj")<CR>', { noremap = true, silent = true })
bind_key('i', '<c-t>', '<cmd>lua vim.api.nvim_command("normal! gk")<CR>', { noremap = true, silent = true })
