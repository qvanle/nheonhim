
local bind_key = vim.keymap.set
local feedkeys = vim.api.nvim_feedkeys
local termcodes = vim.api.nvim_replace_termcodes
local opts = { noremap = true, silent = true }

local function key(k)
    return function()
        feedkeys(termcodes(k, true, false, true), 'n', false)
    end
end

bind_key('n', '<leader>ff', key("<cmd>Telescope find_files<CR>"), opts)
bind_key('n', '<leader>fb', key("<cmd>Telescope buffers<CR>"), opts)
bind_key('n', '<leader>lg', key("<cmd>Telescope live_grep<CR>"), opts)
bind_key('n', '<leader>gs', key("<cmd>Telescope grep_string<CR>"), opts)
bind_key('n', '<leader>di', key("<cmd>Telescope diagnostics<CR>"), opts)
