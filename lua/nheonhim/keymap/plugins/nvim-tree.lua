
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

-- Helper function for feedkeys
local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end


bind_key('n', '<c-f>', key('<cmd>NvimTreeToggle<CR>'), opts)
bind_key('n', '<c-u>', key('<cmd>NvimTreeToggle<CR>'), opts)
bind_key('i', '<c-u>', key('<Esc><cmd>NvimTreeToggle<CR>'), opts)
bind_key('v', '<c-u>', key('<Esc><cmd>NvimTreeToggle<CR>'), opts)
