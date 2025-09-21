-- load lazy.nvim & vim settings
require('config.lazy')

-- load keybindings for nvim
require("remap.remap")

-- set colorscheme
-- colorschemes installed/loaded in plugins
-- default set in plugins
vim.cmd([[colorscheme tokyonight]])
