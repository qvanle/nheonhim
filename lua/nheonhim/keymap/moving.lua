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


-- === Normal Mode Movement ===
bind_key('n', 'd', key('<Left>'), opts)         -- Left
bind_key('n', 'n', key('<Right>'), opts)        -- Right
bind_key('n', 'h', key('gj'), opts)             -- Down (visual)
bind_key('n', 't', key('gk'), opts)             -- Up (visual)

-- === Insert Mode Movement ===
bind_key('i', '<c-d>', key('<Left>'), opts)         -- Left
bind_key('i', '<c-n>', key('<Right>'), opts)        -- Right
bind_key('i', '<c-h>', key('<down>'), opts)             -- Down (visual)
bind_key('i', '<c-t>', key('<up>'), opts)             -- Up (visual)

-- Move to start of file (gg)
bind_key('n', 'gg', key('gg'), opts)

-- Move to end of file (GG)
bind_key('n', 'GG', key('G'), opts)

-- , → forward to end of word (e)
bind_key('n', ',', key('e'), opts)

-- . → backward to beginning of word (b)
bind_key('n', '.', key('b'), opts)

-- p → jump to matching pair (via `%`)
bind_key('n', 'p', key('%'), opts)

-- < → jump to start of the line
bind_key('n', '<', key('0'), opts)

-- > → jump to end of the line
bind_key('n', '>', key('$'), opts)

-- Ctrl + , → jump to first non-blank character of the line
bind_key('n', '<C-,>', key('^'), opts)

-- dd → Move to local declaration (using [{ for the start of a function or block)
bind_key('n', '<leader>dd', key('gd'), opts)

-- DD → Move to global declaration (using ]] for global function, class, or block)
bind_key('n', '<leader>DD', key('gD'), opts)

-- fx → jump to next occurrence of character x
bind_key('n', 'f', key('f'), opts)

-- Fx → jump to previous occurrence of character x
bind_key('n', 'F', key('F'), opts)

-- - → repeat the previous f, t, F, or T movement (using `;`)
bind_key('n', '-', key(';'), opts)

-- ( → jump to previous paragraph (or function/block)
bind_key('n', '(', key('[['), opts)

-- ) → jump to next paragraph (or function/block)
bind_key('n', ')', key(']]'), opts)

-- Jump back to previous position with 'uu'
bind_key('n', 'uu', key('<C-o>'), opts)

