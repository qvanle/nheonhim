-- window-bindings.lua

local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

-- Helper function
local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end

-- === Window Navigation ===
bind_key('n', '<c-s-d>', '<C-w>h', opts) -- Move to left window
bind_key('n', '<c-s-t>', '<C-w>k', opts) -- Move to upper window (Dvorak-friendly)
bind_key('n', '<c-s-h>', '<C-w>j', opts) -- Move to lower window
bind_key('n', '<c-s-n>', '<C-w>l', opts) -- Move to right window

-- === Window Splits ===
bind_key('n', '<leader>ws', ':split<CR>', opts)        -- Horizontal split
bind_key('n', '<leader>wv', ':vsplit<CR>', opts)       -- Vertical split

-- === Window Closing ===
bind_key('n', '<c-e>', ':bd<CR>', opts)        -- Close current window

-- === Window Resizing ===
bind_key('n', '<C-Up>', ':resize -2<CR>', opts)        -- Shrink vertically
bind_key('n', '<C-Down>', ':resize +2<CR>', opts)      -- Expand vertically
bind_key('n', '<C-Left>', ':vertical resize -2<CR>', opts) -- Shrink horizontally
bind_key('n', '<C-Right>', ':vertical resize +2<CR>', opts) -- Expand horizontally


-- === Buffer Navigation ===
bind_key('n', 'bn', ':bnext<CR>', opts)        -- Go to next buffer
bind_key('n', 'bp', ':bprevious<CR>', opts)    -- Go to previous buffer
