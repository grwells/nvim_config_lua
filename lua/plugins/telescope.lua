-- telescope/fuzzy finder
-- for help see :help telescope
-- remappings in config/wk.lua (which-key)
return {
	{
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
        -- from lazyvim example
        opts = {
            defaults = { -- :help telescope.setup()
                layout_strategy = "flex",
                layout_config = { prompt_position = "top", width = 0.6, },
                sorting_strategy = "ascending",
                winblend = 0,   
                scroll_strategy = "limit", -- don't loop scroll
                path_display = {"filename_first"},
            },
        },
        -- define custom key mappings
        keys = {
        },
    }
}
