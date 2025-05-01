local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end

-- Append a line below (like 'o' but stay in normal mode)
bind_key('n', 'o', key('o<Esc>'), opts)

-- Append a line above (like 'O' but stay in normal mode)
bind_key('n', 'O', key('O<Esc>'), opts)

-- x (in insert) and Ctrl-x: delete character before cursor
bind_key('n', 'x', key('s<Esc>'), opts)
bind_key('i', '<C-x>', key('<C-h>'), opts)

-- Ctrl-X: delete word before cursor
bind_key('i', '<C-X>', key('<C-w>'), opts)

-- x,: detele a word (forward)
bind_key('n', 'x,', key('ce<Esc>'), opts)
-- x.: detele a word (backward)
bind_key('n', 'x.', key('cb<Esc>'), opts)

-- Save file and notify
bind_key({ 'n', 'i' }, '<C-o>', function()
    feedkeys(termcodes('<ESC>', true, false, true), 'n', false)
    vim.cmd('write')  -- save file
    local filename = vim.fn.expand('%:t')  -- get filename only
    vim.notify('Saved file: ' .. filename, vim.log.levels.INFO, { title = 'Save File' })
end, opts)

-- Duplicate current line with 'ee'
bind_key('n', 'ee', function()
    local line = vim.api.nvim_get_current_line()
    local row = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, row, row, false, { line })
end, opts)

-- Delete current line with 'EE'
bind_key('n', 'EE', function()
    local row = vim.api.nvim_win_get_cursor(0)[1]
    vim.api.nvim_buf_set_lines(0, row - 1, row, false, {})
end, opts)

bind_key({ 'n', 'i' }, '<C-;>', function()
    vim.cmd('undo')
end, opts)

bind_key({ 'n', 'i' }, '<C-S-;>', function()
    vim.cmd('redo')
end, opts)

bind_key('n', 'r', key('r'), opts)
bind_key('n', 'R', key('R'), opts)
-- Toggle case of character under cursor with '~'
bind_key('n', '~', key('~'), opts)
bind_key('n', '<tab>', key('v><ESC>'), opts)
bind_key('n', '<S-tab>', key('v<<ESC>'), opts)
bind_key('n', 'cc', '"+yy', opts)
bind_key('n', 'vv', key('"+p'), opts)
bind_key('n', 'VV', key('"+P'), opts)

bind_key('n', '<leader>be', key('gg=GG'), opts)
