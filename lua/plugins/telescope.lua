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
        },
    }
}
