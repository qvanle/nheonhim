
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end


vim.g.copilot_no_tab_map = true  -- Disable default <Tab> mapping
vim.cmd[[imap <silent><script><expr> <C-a> copilot#Accept("\<CR>")]]

