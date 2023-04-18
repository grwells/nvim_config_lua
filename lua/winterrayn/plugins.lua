--[[
-- 	Generate a table of plugins to be loaded by 
-- 	lazy.nvim plugin manager
--]]
return {
	--[[
	-- 	TOOLKIT PLUGINS
	--]]

	-- startup time analysis
	--   :StartupTime ~/<path_here>/init.vim -<num_samples>
	{
		'tweekmonster/startuptime.vim'
	},

	-- faster filetype detection
	{
		'nathom/filetype.nvim'
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
		dependencies = {'nvim-lua/plenary.nvim'}
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

	--[[
	-- 	SYNTAX HIGHLIGHTING
	--]]

	-- kitty config syntax highlighting
	{
		'fladson/vim-kitty'
	},

	-- better syntax highlighting
	{
		'nvim-treesitter/nvim-treesitter', 
		init = TSUpdate
	},

}
--[[
-- nvim startup menu
Plug 'mhinz/vim-startify'
--]]

