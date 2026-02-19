-- [[
-- LSP Configuration
-- Modify the builtin options through 
-- the vim API(see :h vim.lsp.enable(), etc)
--
-- Default mappings :h lsp-defaults
-- ]]

-- Default Config
vim.lsp.config['*'] = { root_markers = { '.git', }, }

-- [[
-- Load configs & enable LSPs
--
-- see :Mason for LSPs, press enter to see executable, languages, schema
-- for an LSP
-- ]]
require("lsp.clangd")
vim.lsp.enable('clangd')

require("lsp.csharp")
vim.lsp.enable('csharp-ls')

require("lsp.lua")
vim.lsp.enable('lua-ls')

require("lsp.ltex-plus")
--vim.lsp.enable('ltex-plus')

require("lsp.python")
vim.lsp.enable('python_ls')

require("lsp.typescript-ls")
vim.lsp.enable('typescript-ls')

require("lsp.zig")
vim.lsp.enable('zls')

