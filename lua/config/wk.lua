-- [[
-- Which Key Mappings
-- ]]
--
-- loaded by lazy.nvim
local wk = require("which-key")

-- telescope mappings
wk.add(
    {
        {"<leader>u", group = "[u]tils"}, -- group telescope nvim utilties
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
        { -- "find buffers" ie already opened
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
        { -- "nvim options"
            "<leader>uo",
            mode = {"n"},
            require("telescope.builtin").vim_options,
            desc = "Search nvim options",
        }, 
        { -- "nvim loclist"
            "<leader>ul",
            mode = {"n"},
            require("telescope.builtin").loclist,
            desc = "Search location list",
        }, 
        { -- "nvim marks"
            "<leader>um",
            mode = {"n"},
            require("telescope.builtin").marks,
            desc = "Search mark list",
        }, 
        { -- "nvim keymaps list"
            "<leader>uM",
            mode = {"n"},
            require("telescope.builtin").keymaps,
            desc = "Search list keymaps - normal",
        }, 
        { -- "nvim colorscheme"
            "<leader>uc",
            mode = {"n"},
            require("telescope.builtin").colorscheme,
            desc = "Search colorschemes",
        }, 
    }
)

-- Git Maps
wk.add({
    {"<leader>g", group = "[g]it"}, -- group telescope maps under git
    { -- "search git files"
        "<leader>gf",
        mode = {"n"},
        require("telescope.builtin").git_files,
        desc = "Search git files",
    }, 
    { -- "search git commits"
        "<leader>gC",
        mode = {"n"},
        require("telescope.builtin").git_commits,
        desc = "Search commits w/ diff preview",
    }, 
    { -- "search buffer git commits"
        "<leader>gc",
        mode = {"n"},
        require("telescope.builtin").git_bcommits,
        desc = "Search buffer commits w/ diff preview",
    }, 
    { -- "search git branches"
        "<leader>gb",
        mode = {"n"},
        require("telescope.builtin").git_branches,
        desc = "Search branches",
    }, 
    { -- "search git branches"
        "<leader>gs",
        mode = {"n"},
        require("telescope.builtin").git_status,
        desc = "List git status",
    }, 
})

-- LSP Maps
wk.add({
    {'<leader>f', group='[f]ormat'},
    {'<leader>l', group='[l]sp'},

    {'<leader>fb', "<cmd>lua vim.lsp.buf.format({timeout_ms=1000})<CR>", desc = 'LSP Format - buffer',},
    {mode='v', '<leader>fs', "<cmd>lua vim.lsp.buf.format({timeout_ms = 1000})<CR>", desc = 'LSP Format - selection',},

    {'<leader>lc', require("telescope.builtin").lsp_incoming_calls, desc = 'LSP - word is called by',},
    {'<leader>lC', require("telescope.builtin").lsp_outgoing_calls, desc = 'LSP - word calls',},
    {'<leader>ls', require("telescope.builtin").lsp_document_symbols, desc = 'LSP list document symbols - buffer',},
    {'<leader>lS', require("telescope.builtin").lsp_workspace_symbols, desc = 'LSP list document symbols - workspace',},
    {'<leader>li', require("telescope.builtin").lsp_implementations, desc = 'LSP - word implementation',},
    {mode='n', '<leader>lj', require("telescope.builtin").lsp_definition, desc = 'LSP - word definition',},
    {'<leader>lt', require("telescope.builtin").lsp_type_definitions, desc = 'LSP - type definition',},
    {mode='n', '<leader>lk', require("telescope.builtin").diagnostics, desc = 'LSP - list buffer diagnostics',},
})

-- Zen modes & Code Folding
wk.add({
    {'<leader>z', group='[z]en - focus'},
    {'<leader>zm', ':ZenMode<CR>',desc = "Toggle zen mode"},
    --{'<leader>zn', ':TZNarrow<CR>', desc = "Narrow view"},
    --{'<leader>zf', ':TZFocus<CR>',desc = "Focused view"},
    --{'<leader>zm', ':TZMinimalist<CR>',desc = "Minimalist view"},
    --{'<leader>za', ':TZAtaraxis<CR>', desc = "Default view"},
})

