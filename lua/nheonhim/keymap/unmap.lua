for i = 32, 126, 1 do
    
    if (i >= 48) and (i <= 58) then
        goto endLoop1
    end
    

    local chr = string.char(i)
    local key

    key = chr
    vim.api.nvim_set_keymap('n', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', key, '<Nop>', { noremap = true, silent = true })

    key = "<C-" .. chr .. ">"
    vim.api.nvim_set_keymap('n', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('i', key, '<Nop>', { noremap = true, silent = true })

    key = "<M-" .. chr .. ">"
    vim.api.nvim_set_keymap('n', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('i', key, '<Nop>', { noremap = true, silent = true })

    key = "<C-M-" .. chr .. ">"
    vim.api.nvim_set_keymap('n', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('v', key, '<Nop>', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('i', key, '<Nop>', { noremap = true, silent = true })
    ::endLoop1::
end
vim.g.mapleader = ' '


local set_keymap = vim.api.nvim_set_keymap 


