
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end


bind_key('n', '<c-s-r>', key('<cmd>OverseerToggle<CR>'), opts)
bind_key('n', '<c-r>', key('<cmd>OverseerOpen<CR><cmd>OverseerRun build.sh<CR>'), opts)
bind_key('i', '<c-s-r>', key('<ESC><cmd>OverseerToggle<CR>'), opts)
bind_key('i', '<c-r>', key('<ESC><cmd>OverseerOpen<CR><cmd>OverseerRun build.sh<CR>'), opts)
