--[[
-- Configuration for Latex, markdown, reStructuredText LSPs.
--]]
vim.lsp.config(
    'ltex-plus',
    {
        cmd = 'ltex-ls-plus',
        filetypes = {'markdown', 'latex', 'tex', 'text'},

    }
)
