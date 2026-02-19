-- [[
-- Clangd Configuration for NVim
-- ]]
--
-- create configuration entry
vim.lsp.config['clangd'] =  {
        cmd = {'clangd'},
        root_markers = {'.clangd', '.clang-format', '.clang-tidy'},
        filetypes = {'c', 'cpp'},
        offsetEncoding = { 'utf-8', 'utf-16' },
}
