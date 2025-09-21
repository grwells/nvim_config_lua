--[[
-- 	NVIM OPTIONS
--]]

-- fat cursor
vim.opt.guicursor = ""
--cursor line 
vim.opt.cursorline = true

-- line number options
vim.opt.nu = true 
vim.opt.relativenumber = true

-- tabstop options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4 
-- use spaces instead of tabs
vim.opt.expandtab = true

-- no line wrap
vim.opt.wrap = false 

--[[
-- 	NVIM COMMANDLINE COMPLETION
--]]
vim.opt.wildmenu = true
vim.opt.wildmode= { 'longest', 'list' }
vim.opt.wildignore = {'*.docx','*.jpg','*.png','*.gif','*.pdf','*.pyc','*.exe','*.flv','*.img','*.xlsx'}

--[[
-- 	CLIPBOARD
--]]
vim.opt.clipboard = "unnamedplus"

-- fast scroll 
vim.opt.ttyfast = true

-- search settings
vim.opt.incsearch = true

-- termguicolors (enables 24bit colors)
vim.opt.termguicolors = true

-- scrolling 
vim.opt.scrolloff = 8

-- [[
-- LSP Configuration
-- Modify the builtin options through 
-- the vim API(see :h vim.lsp.enable(), etc)
-- ]]
vim.lsp.config('*', 
{
    capabilities = {
        textDocument = {
            semanticTokens = {
                multilineTokenSupport = true,
            }
        }
    },
    root_markers = { '.git', },
    -- enable for c/c++ files
    filetypes = {'c', 'cpp'},
})
vim.lsp.enable('clangd')
