-- telescope/fuzzy finder
return {
	{
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
        -- from lazyvim example
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,   
                scroll_strategy = "limit", -- don't loop scroll
                path_display = "filename_first",
            },
        },
        -- define custom key mappings
        keys = {
            { -- "find selected symbol"
                "<leader>fs",
                mode = {"n"},
                require("telescope.builtin").grep_string,
                desc = "grep for string under cursor",
            }, 
            { -- "find file"
                "<leader>ff",
                mode = {"n"},
                require("telescope.builtin").find_files,
                desc = "Find file",
            }, 
            { -- "find grep"
                "<leader>fg",
                mode = {"n"},
                require("telescope.builtin").live_grep,
                desc = "Find (grep for) string",
            }, 
            { -- "find buffers"
                "<leader>fb",
                mode = {"n"},
                require("telescope.builtin").buffers,
                desc = "Find buffer",
            }, 
            { -- "find help tags"
                "<leader>fh",
                mode = {"n"},
                require("telescope.builtin").help_tags,
                desc = "Search for help tag",
            }, 

        },
    }
}
