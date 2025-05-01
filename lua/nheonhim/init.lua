local api = {}
api.hello_world = require("nheonhim.utils.hello-world")
vim.nheonhim = api

require("nheonhim.keymap.unmap")
require("nheonhim.keymap.moving")
require("nheonhim.keymap.mode")
require("nheonhim.keymap.edit")
require("nheonhim.keymap.visual")
