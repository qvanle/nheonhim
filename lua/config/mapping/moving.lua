local set_keymap = vim.api.nvim_set_keymap

set_keymap('n', 'd', '<left>', { noremap = true, silent = true })
set_keymap('n', 'n', '<right>', { noremap = true, silent = true })
set_keymap('n', 'h', '<cmd>lua vim.api.nvim_command("normal! gj")<CR>', { noremap = true, silent = true })
set_keymap('n', 't', '<cmd>lua vim.api.nvim_command("normal! gk")<CR>', { noremap = true, silent = true })
-- ctrl + dnht to move in insert mode 
set_keymap('i', '<c-d>', '<left>', { noremap = true, silent = true })
set_keymap('i', '<c-n>', '<right>', { noremap = true, silent = true })
set_keymap('i', '<c-h>', '<cmd>lua vim.api.nvim_command("normal! gj")<CR>', { noremap = true, silent = true })
set_keymap('i', '<c-t>', '<cmd>lua vim.api.nvim_command("normal! gk")<CR>', { noremap = true, silent = true })
