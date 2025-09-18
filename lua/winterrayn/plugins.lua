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
		'dracula/vim'
	},

	-- tokyonight colorscheme
	{
		'folke/tokyonight.nvim'
	},

    -- gruvbox
    {
        "ellisonleao/gruvbox.nvim"
    },

    {
        "LazyVim/LazyVim",
        enable = false,
        opts = {
            colorscheme = "gruvbox",
        },
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
            },
        },
	},

	-- code completion
	{
		'neoclide/coc.nvim', 
		branch =  'release'
	},

	-- quote and bracket completion
	{
		'jiangmiao/auto-pairs'
	},

	-- adds anotations
	{
		'danymat/neogen', 
		branch = 'main'
	},

    {
        'Pocco81/true-zen.nvim'
    },


	--[[
	-- 	SYNTAX HIGHLIGHTING
	--]]

	-- kitty config syntax highlighting
	{
		'fladson/vim-kitty',
        enable = false,
	},

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

}
--[[
-- nvim startup menu
Plug 'mhinz/vim-startify'
--]]

