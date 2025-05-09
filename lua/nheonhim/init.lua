local api = {}
api.hello_world = require("nheonhim.utils.hello-world")
vim.nheonhim = api

require("nheonhim.keymap.unmap")
require("nheonhim.keymap.moving")
require("nheonhim.keymap.mode")
require("nheonhim.keymap.edit")
require("nheonhim.keymap.visual")
require("nheonhim.keymap.search")
require("nheonhim.keymap.window")
require("nheonhim.keymap.macro")
require("nheonhim.keymap.diagnostics")


require("nheonhim.keymap.plugins.nvim-tree")
require("nheonhim.keymap.plugins.telescope")
require("nheonhim.keymap.plugins.lsp-zero")
require("nheonhim.keymap.plugins.noice")
require("nheonhim.keymap.plugins.copilot")
require("nheonhim.keymap.plugins.avante")
require("nheonhim.keymap.plugins.toggleterm")
require("nheonhim.keymap.plugins.avante")
require("nheonhim.keymap.plugins.formatter")
require("nheonhim.keymap.plugins.overseer")
