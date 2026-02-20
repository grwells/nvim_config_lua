-- [[
-- Clangd Configuration for NVim
-- ]]
--
-- create configuration entry
vim.lsp.config['clangd_ls'] = {
        cmd = {'clangd'},
        root_markers = {'.clangd', '.clang-format', '.clang-tidy', '.git'},
        filetypes = {'c', 'cpp'},
        offsetEncoding = { 'utf-8', 'utf-16' },
}
