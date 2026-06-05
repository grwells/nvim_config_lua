-- see :h ui2, replaces cmdline & message presentation to allow g <
require('vim._core.ui2').enable({})
-- load lazy.nvim & vim settings
require('config.lazy')

-- load keybindings for nvim
require("config.remap")

-- set colorscheme
-- colorschemes installed/loaded in plugins
-- default set in plugins
vim.cmd([[colorscheme tokyonight]])
