-- macro-bindings.lua

local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

-- Helper function to wrap feedkeys
local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end

-- === Macro Keybindings ===

-- Start recording a macro in normal mode (q{register})
bind_key('n', 'q', key('q'), opts) -- Start recording

-- Play a macro (replay)
bind_key('n', '@', key('@'), opts) -- Play macro from register (e.g., @a, @b, etc.)
bind_key('n', '@@', key('@@'), opts) -- Play last used macro

