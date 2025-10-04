local opt = vim.opt

-- line numbers
opt.number = true -- show the actual number for the line we're on
opt.relativenumber = true -- Show line numbers

-- search
opt.ignorecase = true -- Ignore case when searching...
opt.smartcase = true -- ... unless there is a capital letter in the query

-- windows splitting 
opt.splitright = true -- Prefer windows splitting to the right
opt.splitbelow = true -- Prefer windows splitting to the bottom

-- Tabs
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true -- indent on newline
opt.wrap = false

opt.swapfile = false
opt.backup = false

opt.hlsearch = false
opt.incsearch = true

-- other
opt.cmdheight = 1 -- Height of the command bar
opt.scrolloff = 8
opt.signcolumn = 'yes'
opt.updatetime = 100
opt.termguicolors = true
opt.belloff = "all" -- Just turn the dang bell off
opt.mouse = "a"

opt.colorcolumn = "80"
