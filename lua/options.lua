local set = vim.opt
local c = require('color')

set.title = true

set.cursorline = true
set.cursorcolumn = true

set.hlsearch = true
set.incsearch = true
set.showmatch = true
set.ignorecase = true

set.matchtime = 1
set.modeline = true
set.number = true
set.relativenumber = true
-- set.signcolumn = "yes:1"

set.belloff = "all"
set.shortmess:append("F")

set.termguicolors = true
set.pumblend = c.blend
set.winblend = c.blend
set.pumborder = "rounded"
set.winborder = "rounded"
set.cmdheight = 0
set.showcmd = true
set.showcmdloc = "tabline"

set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.smartindent = true
set.smarttab = true
-- set.expandtab = true

set.wrap = false
set.list = true

set.backspace = { "indent", "eol", "start" }

-- set.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

set.modifiable = true

set.undofile = true

