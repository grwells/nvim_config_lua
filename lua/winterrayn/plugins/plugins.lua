--[[
-- 	Generate a table of plugins to be loaded by 
-- 	lazy.nvim plugin manager
--]]
return {
	--[[ 
	-- 	COLOR SCHEMES 
	-- ]]
	--
	-- dracula colorscheme
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

	--[[
	-- 	TOOLKIT PLUGINS
	--]]

	-- startup time analysis
	--   :StartupTime ~/<path_here>/init.vim -<num_samples>
	{
		'tweekmonster/startuptime.vim'
	},

	-- plenary
	-- lua module for asynchronous programming with coroutines
	{
		'nvim-lua/plenary.nvim'
	},

	--[[ 
	-- 	EDITOR FEATURES
	--]]
	--

	-- adds DevIcons for filetypes
	{
		'ryanoasis/vim-devicons'
	},

	-- lua fork of vim-devicons 
	{
		'nvim-tree/nvim-web-devicons'
	},

	-- telescope/fuzzy finder
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
	},

	-- code completion
	{
		'neoclide/coc.nvim', 
		branch =  'release',
		lazy = true,
	},

	-- quote and bracket completion
	{
		'jiangmiao/auto-pairs',
		lazy = true,
	},

	-- adds anotations
	{
		'danymat/neogen', 
		branch = 'main',
		lazy = true,
	},

    -- zen for writing
    {
        'Pocco81/true-zen.nvim',
	lazy = true,
    },

    {
        "mason-org/mason.nvim",
        enable = true,
        opts = {

        },
	lazy = true,
    },


	--[[
	-- 	SYNTAX HIGHLIGHTING
	--]]
	-- better syntax highlighting
	{
		'nvim-treesitter/nvim-treesitter', 
		init = TSUpdate,
        opts = {
            ensure_installed = {
                lua,
                rust,
                zig,
                python,
                regex,
                vim,
                yaml,
                json,
                html,
                markdown,
                bash,
                c,
                cpp,
                doxygen,
                dockerfile,
                xml,
                vimdoc,
            }
        }
	},

    {
        'mhinz/vim-startify',
        enable = true,
        opts = {},
        config = function () end,
	lazy = false,
	priority = 1000,
    },

}
--[[
-- nvim startup menu
Plug 'mhinz/vim-startify'
--]]

