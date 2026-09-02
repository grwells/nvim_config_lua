-- [[
-- LSP plugins and configuration
-- ]]
return {
    -- LSP installer and manager
    {
        "mason-org/mason.nvim",
        enable = true,
        opts = {
            ensure_installed = {
                -- list required LSPs that should be auto-installed
                "clang-format",             -- C/C++ linter
                "clangd",                   -- C/C++ LSP
                "cmake-language-server",    -- CMake
                "csharp-language-server",   -- C#
                "ltex-ls-plus",             -- latex(bibtex, contex, etc), markdown, rST
                "lua-language-server",      -- Lua
                "pyflakes",                 -- Python static code analysis 
                "python-lsp-server",        -- Python
                "zls",                      -- Zig
            },
        },
    },
}
