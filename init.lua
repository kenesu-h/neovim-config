local utils = require "utils"

utils.set_luafile_auto_reload()
utils.set_packer_auto_compile()
local _ = require "plugins"

vim.g.mapleader = " "
utils.load_plugin_configs()
local _ = require "options"
local _ = require "keymaps"
