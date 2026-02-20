-- [[
-- Zig LSP Config
-- ]]
vim.lsp.config['zig_ls'] = {
        cmd = {'zls'},
        root_markers = {"build.zig", "build.zig.zon"},
        filetypes = {'zig'},
}
