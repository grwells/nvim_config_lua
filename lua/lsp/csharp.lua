--[[
-- C# LSP Config
--]]
vim.lsp.config['csharp-ls'] = {
        cmd = {'csharp-ls'},
        root_markers = {'.sln',},
        filetypes = {'cs'},
        root_dir = vim.fs.root(
            0,
            function(name,path) return name:match('%.sln$') ~= nil end)
    }
