local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end

-- NORMAL → INSERT
bind_key('n', 'i', key('i'), opts)
bind_key('n', 'a', key('a'), opts)

-- NORMAL: bind <ESC> to itself (optional)
bind_key('n', '<ESC>', key('<ESC>'), opts)
-- NORMAL → Save and Quit (ZZ)
bind_key('n', 'ZZ', key('ZZ'), opts)

-- INSERT → NORMAL
bind_key('i', '<ESC>', key('<ESC>'), opts)

-- NORMAL → VISUAL
bind_key('n', 'kk', key('v'), opts)
bind_key('n', 'KK', key('V'), opts)
bind_key('n', '<C-k>', key('<C-v>'), opts)

-- VISUAL → NORMAL
bind_key('v', '<ESC>', key('<ESC>'), opts)

-- TERMINAL → NORMAL
bind_key('t', '<ESC>', key('<C-\\><C-n>'), opts)


