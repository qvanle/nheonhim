local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end

-- Word, blocks, tags selections
bind_key('v', 'cw', "iw", opts)      -- inner word
bind_key('v', 'cb', "ab", opts)      -- a block (parentheses)
bind_key('v', 'cB', "aB", opts)      -- a block (braces)
bind_key('v', 'at', "at", opts)      -- a tag block
bind_key('v', 'ib', "ib", opts)      -- inner block (parentheses)
bind_key('v', 'iB', "iB", opts)      -- inner block (braces)
bind_key('v', 'it', "it", opts)      -- inner tag

-- Shift right with Tab
bind_key('v', '<Tab>', '>', opts)

-- Shift left with Shift+Tab
bind_key('v', '<S-Tab>', '<', opts)

-- Copy to clipboard
bind_key('v', 'CC', '"+y', opts)     -- yank to system clipboard

-- Delete selection
bind_key('v', 'x', 'd', opts)        -- delete selected text
bind_key('v', '<s-e><s-e>', 'd', opts)        -- delete selected text

-- Toggle case
bind_key('v', '~', '~', opts)        -- toggle case

-- To lowercase
bind_key('v', 'u', 'gu', opts)

-- To uppercase
bind_key('v', 'U', 'gU', opts)

-- Paste below with 'vv'
bind_key('n', 'vv', key('p'), opts)

-- Paste above with 'VV'
bind_key('n', 'VV', key('P'), opts)

-- === Visual Mode Movement ===
bind_key('v', 'd', key('<Left>'), opts)         -- Left
bind_key('v', 'n', key('<Right>'), opts)        -- Right
bind_key('v', 'h', key('gj'), opts)             -- Down (visual line)
bind_key('v', 't', key('gk'), opts)             -- Up (visual line)

-- Start of file
bind_key('v', 'gg', key('gg'), opts)

-- End of file
bind_key('v', 'GG', key('G'), opts)

-- Jump forward to end of word
bind_key('v', ',', key('e'), opts)

-- Jump backward to beginning of word
bind_key('v', '.', key('b'), opts)

-- Jump to matching pair
bind_key('v', 'p', key('%'), opts)

-- Start of line
bind_key('v', '<', key('0'), opts)

-- End of line
bind_key('v', '>', key('$'), opts)

-- First non-blank character of the line
bind_key('v', '<C-,>', key('^'), opts)

-- Local declaration
bind_key('v', '<leader>dd', key('gd'), opts)

-- Global declaration
bind_key('v', '<leader>DD', key('gD'), opts)

-- Next occurrence of character
bind_key('v', 'f', key('f'), opts)

-- Previous occurrence of character
bind_key('v', 'F', key('F'), opts)

-- Repeat last f/F
bind_key('v', '-', key(';'), opts)

-- Jump to previous block
bind_key('v', '(', key('[['), opts)

-- Jump to next block
bind_key('v', ')', key(']]'), opts)

