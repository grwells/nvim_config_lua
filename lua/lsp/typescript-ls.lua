vim.lsp.config['typescript-ls'] = {
        cmd = {'typescript-language-server'},
        root_markers = {'package.json', 'main.js'},
        filetypes = {'javascript', 'typescript'},
}
