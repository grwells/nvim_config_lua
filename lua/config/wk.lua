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
        { -- "find file PWD"
            "<leader>sf",
            mode = {"n"},
            function()
                require("telescope.builtin").find_files({cwd = vim.env.PWD})
            end,
            desc = "Search for Files(PWD)",
        }, 
        { -- "find file CWD"
            "<leader>sF",
            mode = {"n"},
            require("telescope.builtin").find_files,
            desc = "Search for File(CWD)",
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
        { -- "search for entries in the man pages"
            "<leader>sm",
            mode = {"n"},
            require("telescope.builtin").man_pages,
            desc = "Search Man pages",
        }, 
        { -- "look at quick fix list"
            "<leader>sq",
            mode = {"n"},
            require("telescope.builtin").quickfix,
            desc = "Search quick fix list",
        }, 
        { -- "look at quick fix list"
            "<leader>sx",
            mode = {"n"},
            require("telescope.builtin").marks,
            desc = "Search vim marks",
        }, 
    }
)

-- Zen modes & Code Folding
wk.add({
    {'<leader>z', group='[z]en - focus'},
    {'<leader>zm', ':ZenMode<CR>',desc = "Toggle zen mode"},
    --{'<leader>zn', ':TZNarrow<CR>', desc = "Narrow view"},
    --{'<leader>zf', ':TZFocus<CR>',desc = "Focused view"},
    --{'<leader>zm', ':TZMinimalist<CR>',desc = "Minimalist view"},
    --{'<leader>za', ':TZAtaraxis<CR>', desc = "Default view"},
})

-- LSP Format Maps
wk.add({
    {'<leader>f', group='[f]ormat'},
    {'<leader>fb', "<cmd>lua vim.lsp.buf.format({timeout_ms=1000})<CR>", desc = 'LSP Format - buffer',},
    {mode='v', '<leader>fs', "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000})<CR>", desc = 'LSP Format - selection',},
})
