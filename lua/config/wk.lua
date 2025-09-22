-- [[
-- Which Key Mappings
-- ]]
--
-- loaded by lazy.nvim
local wk = require("which-key")

-- telescope mappings
wk.add(
    {
        {"<leader>s", group = "[s]earch"}, -- group telescope maps under search
        { -- "find selected symbol"
            "<leader>ss",
            mode = {"n"},
            require("telescope.builtin").grep_string,
            desc = "Search for Symbol - under cursor",
        }, 
        { -- "find file"
            "<leader>sf",
            mode = {"n"},
            require("telescope.builtin").find_files,
            desc = "Search for File",
        }, 
        { -- "find grep"
            "<leader>sg",
            mode = {"n"},
            require("telescope.builtin").live_grep,
            desc = "Search for String",
        }, 
        { -- "find buffers"
            "<leader>sb",
            mode = {"n"},
            require("telescope.builtin").buffers,
            desc = "Search Buffers",
        }, 
        { -- "find help tags"
            "<leader>sh",
            mode = {"n"},
            require("telescope.builtin").help_tags,
            desc = "Search for Help tag",
        }, 
    }
)

-- Zen modes & Code Folding
wk.add({
    {'<leader>z', group='[z]en - focus'},
    {'<leader>zn', ':TZNarrow<CR>', desc = "Narrow view"},
    {'<leader>zf', ':TZFocus<CR>',desc = "Focused view"},
    {'<leader>zm', ':TZMinimalist<CR>',desc = "Minimalist view"},
    {'<leader>za', ':TZAtaraxis<CR>', desc = "Default view"},
})

-- LSP Format Maps
wk.add({
    {'<leader>f', group='[f]ormat'},
    {'<leader>fb', "<cmd>lua vim.lsp.buf.format({timeout_ms=1000})<CR>", desc = 'LSP Format - buffer',},
    {mode='v', '<leader>fs', "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000})<CR>", desc = 'LSP Format - selection',},
})
