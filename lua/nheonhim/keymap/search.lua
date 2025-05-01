local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
  return function()
    feedkeys(termcodes(k, true, false, true), 'n', false)
  end
end


-- Start search forward (/)
bind_key('n', '/', key('/'), opts)
bind_key('v', '/', key('/'), opts)


-- Start search backward (?)
bind_key('n', '?', key('?'), opts)
bind_key('v', '?', key('?'), opts)


-- Next match <c-n>
bind_key('n', '<c-n>', key('n'), opts)
bind_key('v', '<c-n>', key('n'), opts)

-- Previous match <c-p>
bind_key('n', '<c-p>', key('N'), opts)
bind_key('v', '<c-p>', key('N'), opts)

-- Clear search highlight
bind_key('n', '<leader>nh', ':nohlsearch<CR>', opts)

-- * and # to search word under cursor
bind_key('n', '*', key('*'), opts)
bind_key('n', '#', key('#'), opts)
