-- [[
-- LSP Configuration
-- Modify the builtin options through 
-- the vim API(see :h vim.lsp.enable(), etc)
--
-- Default mappings :h lsp-defaults
-- ]]
vim.lsp.config['*'] = {
        root_markers = { '.git', },
}


-- load configs
require("lsp.clangd")
require('lsp.zigls')

-- enable
vim.lsp.enable('clangd_ls')
vim.lsp.enable('zig_ls')

