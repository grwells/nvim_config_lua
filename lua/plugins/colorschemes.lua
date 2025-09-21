-- 	COLOR SCHEMES 
--[[ 
-- ]]
--
-- dracula colorscheme
return {
	{
		'dracula/vim',
        enable = true,
	},

	-- tokyonight colorscheme
	{
		'folke/tokyonight.nvim',
        enable = true,
        lazy = false,
        opts = {
            style = "night", -- night/storm/day/moon
	    priority = 1000,
	    -- set as default colorscheme
	    config = function ()
		    vim.cmd([[colorscheme tokonight]])
	    end
        },
	},

    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim",
        enable = true,
    },
}
