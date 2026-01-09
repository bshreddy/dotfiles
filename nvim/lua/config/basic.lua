-- Disable Mouse
vim.opt.mouse = ""

-- Change <tab> to 4 spaces
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Show line absolute and relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- don't insert, show options
vim.opt.wildmenu = true
vim.opt.wildmode = "list:longest,list:full"

-- Set leader to <Spacebar>
vim.g.mapleader = " "

-- Set Python3 Path
vim.g.python3_host_prog = '/usr/bin/python3'

-- Smart Indent
vim.opt.smartindent = true

-- Disable Warp
vim.opt.wrap = false

-- Disable Vim Auto Backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Have long running undotree
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disable permanent search highlighting
vim.opt.hlsearch = false
-- Enable incremental highlighting
vim.opt.incsearch = true

vim.opt.termguicolors = true

-- Always have 10 lines when scolling
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast updatetime
vim.opt.updatetime = 50

-- Color 120 column
vim.opt.colorcolumn = "120"

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Enable 24-bit colour
vim.opt.termguicolors = true
