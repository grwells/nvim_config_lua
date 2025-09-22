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

    -- shows mapped keys
    {
        'folke/which-key.nvim',
        enable = true,
        event = "VeryLazy",
        opts = {},
        keys = {
            {"<leader>?",
            function ()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
            }
        },
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
    
	-- lua fork of vim-devicons 
	{
		'nvim-tree/nvim-web-devicons'
	},

	-- adds anotations
    -- TODO: better description of what this does
	{
		'danymat/neogen', 
		branch = 'main',
		lazy = true,
	},

    -- zen for writing
    {
        'Pocco81/true-zen.nvim',
        lazy = true,
        keys = {
            {'<leader>zn', ':TZNarrow<CR>', desc = "Narrow view"},
            {'<leader>zf', ':TZFocus<CR>',desc = "Focused view"},
            {'<leader>zm', ':TZMinimalist<CR>',desc = "Minimalist view"},
            {'<leader>za', ':TZAtaraxis<CR>', desc = "Default view"},
        }
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
        },
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
