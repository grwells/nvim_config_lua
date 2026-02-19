-- [[
-- LSP config for Lua
-- ]]
vim.lsp.config['lua-ls'] = {
        cmd = {'lua-language-server'},
        --root_markers = {''},
        filetypes = {'lua'},
}
