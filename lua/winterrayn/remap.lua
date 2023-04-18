--[[
--      CUSTOM KEY MAPPINGS
--
--      NOTE:
--          * if many things are remapped to a sequence that begins
--              with the same characters, its timeout will be longer, 
--              potentially slowing you down. This means <leader> based
--              mappings are probably the slowest.
--]]

-- set map leader
--      * if empty defaults to backslash -> '\'
vim.g.mapleader = ""

-- open file explorer in vim
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv'")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv'")

-- preserve copy buffer after paste
vim.keymap.set("x", "<leader>p", "\"_dP")


--[[
     In normal mode, press Space to toggle the current fold open/closed. 
     However, if the cursor is not in a fold, move to the right (the default behavior). 
     In addition, with the manual fold method, you can create a fold by visually 
     selecting some lines, then pressing Space. 
--]]
vim.keymap.set('n', '<space>', 'za', {silent=true})
--vim.keymap.set('n', '<shift><space>', 'zA', {silent=true})


--[[
--      Autocommand Groups
--]]

local generic = vim.api.nvim_create_augroup('generic', {clear=true})
-- group for text editing, hypertext, not code
local docs = vim.api.nvim_create_augroup('documentation', {clear=true})

-- text and hypertext editing commands
vim.api.nvim_create_autocmd(
    {'BufNewFile', 'BufRead'},
    {
        pattern = {'*.tex', '*.md'},
        group = docs,
        callback = function()
            --vim.opt.nowrap = false
            -- activate spell check
            vim.cmd("setlocal spell spelllang=en_us")
            -- set wrap and linebreak
            vim.cmd("setlocal wrap linebreak breakat&vim")
            
        end
    }
)

-- fold auto command
vim.api.nvim_create_autocmd(
    {'BufRead'},
    {
        pattern = '*',
        group = generic,
        callback = function()
            vim.cmd("setlocal foldmethod=indent | setlocal foldnestmax=20 | setlocal foldcolumn=9 | setlocal foldlevel=0")
        end
    }
)
