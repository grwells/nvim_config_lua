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
        opts = {
            preset = "helix", -- small floating box w/ border
            expand = 0,
            sort = {"group"},
        },
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

    -- auto matching of parenthesis, etc.
    -- NOTE: i_C-v will skip autopair
    {
        'nvim-mini/mini.pairs',
        enabled = true,
        event = "VeryLazy",
        opts = {
            modes = {insert = true, command = true, terminal = false},
            -- skip autopair when next character is one of these
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            -- skip autopair when the cursor is inside these treesitter nodes
            skip_ts = { "string" },
            -- skip autopair when next character is closing pair
            -- and there are more closing pairs than opening pairs
            skip_unbalanced = true,
            -- better deal with markdown code blocks
            markdown = true,
        },
    },
    
	-- lua fork of vim-devicons 
	{
		'nvim-tree/nvim-web-devicons'
	},

	-- generate annotations for the current file
	{
		'danymat/neogen', 
		branch = 'main',
        config = true,
		lazy = true,
	},

    -- zen for writing
    {
        'folke/zen-mode.nvim',
        lazy = false,
        priority = 1000,
        keys = {
            --{'<leader>zm', ':ZenMode<CR>',desc = "Toggle zen mode"},
            --{'<leader>zn', ':TZNarrow<CR>', desc = "Narrow view"},
            --{'<leader>zf', ':TZFocus<CR>',desc = "Focused view"},
            --{'<leader>za', ':TZAtaraxis<CR>', desc = "Default view"},
        }
    },
	--[[
	-- 	SYNTAX HIGHLIGHTING
	--]]
	-- better syntax highlighting
    -- Supported Languages: https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
	{
		'nvim-treesitter/nvim-treesitter', 
		init = TSUpdate,
        opts = {
            ensure_installed = {
                bash,
                c,
                cpp,
                c_sharp,
                doxygen,
                dockerfile,
                html,
                javascript,
                json,
                latex,
                lua,
                markdown,
                python,
                rust,
                regex,
                typescript,
                vim,
                vimdoc,
                xml,
                yaml,
                zig,
            }
        },
	},

    -- {
    --     'mhinz/vim-startify',
    --     enable = false,
    --     opts = {},
    --     config = function () end,
    --     lazy = false,
    --     priority = 1000,
    -- },
}
