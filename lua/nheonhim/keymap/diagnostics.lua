
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end

-- Jump to previous diagnostic
bind_key('n', '<c-d>', vim.diagnostic.goto_prev, opts)

-- Jump to next diagnostic
bind_key('n', '<c-s-d>', vim.diagnostic.goto_next, opts)
