-- [[
-- Zig lsp configuration for zls.
-- ]]
vim.lsp.config['zls'] = {
        cmd = {'zls'},
        root_markers = {'.zig','build.zig'},
        filetypes = {'zig'},
}
