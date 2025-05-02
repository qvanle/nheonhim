
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end

bind_key('n', '<c-y>', key("<cmd>ToggleTerm name=<3 size=10<CR>"), opts);
bind_key('i', '<c-y>', key("<Esc><cmd>ToggleTerm name=<3 size=10<CR>"), opts);
