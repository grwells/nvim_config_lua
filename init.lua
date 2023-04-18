vim.g.do_filetype_lua = true
vim.g.did_load_filetypes = false

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- load plugins and configuration from here
require('winterrayn')
plugins = winterrayn_plugins

require('lazy').setup(plugins, opts)
