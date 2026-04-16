vim.lsp.config['typescript_ls'] = {
        cmd = {'typescript-language-server'},
        root_markers = {'package.json', 'main.js'},
        filetypes = {'javascript', 'typescript'},
}
