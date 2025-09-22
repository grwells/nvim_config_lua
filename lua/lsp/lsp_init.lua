-- [[
-- LSP Configuration
-- Modify the builtin options through 
-- the vim API(see :h vim.lsp.enable(), etc)
--
-- Default mappings :h lsp-defaults
-- ]]
vim.lsp.config(
    '*', -- default for all clients
    {
        root_markers = { '.git', },
    })

-- load configs
require("lsp.clangd")

vim.lsp.enable('clangd')
