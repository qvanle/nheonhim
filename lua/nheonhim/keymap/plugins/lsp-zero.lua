
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


bind_key('n', '<leader>ih', key('<cmd>lua vim.lsp.buf.hover()<cr>'), opts)
bind_key('n', '<leader>id', key('<cmd>lua vim.lsp.buf.definition()<cr>'), opts)
bind_key('n', '<leader>iD', key('<cmd>lua vim.lsp.buf.declaration()<cr>'), opts)
bind_key('n', '<leader>ii', key('<cmd>lua vim.lsp.buf.implementation()<cr>'), opts)
bind_key('n', '<leader>it', key('<cmd>lua vim.lsp.buf.type_definition()<cr>'), opts)
bind_key('n', '<leader>ir', key('<cmd>lua vim.lsp.buf.references()<cr>'), opts)
bind_key('n', '<leader>is', key('<cmd>lua vim.lsp.buf.signature_help()<cr>'), opts)
bind_key('n', '<leader>in', key('<cmd>lua vim.lsp.buf.rename()<cr>'), opts)
bind_key({'n', 'x'},'<leader>if', key('<cmd>lua vim.lsp.buf.format({async = true})<cr>'), opts)
bind_key('n', '<leader>ic', key('<cmd>lua vim.lsp.buf.code_action()<cr>'), opts)
