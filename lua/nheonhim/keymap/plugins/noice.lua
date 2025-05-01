
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end

bind_key('n', '<leader>nh', key('<cmd>noh<CR><cmd>Noice dismiss<CR>'), opts)
bind_key('n', '<c-\'>', key('<cmd>noh<CR><cmd>Noice dismiss<CR>'), opts)
bind_key('i', '<c-\'>', key('<cmd>noh<CR><cmd>Noice dismiss<CR>'), opts)
