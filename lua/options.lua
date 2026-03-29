local set = vim.opt

set.title = true

set.backspace = { "indent", "eol", "start" }

set.cursorline = true
set.cursorcolumn = true

set.hlsearch = true
set.incsearch = true
set.showmatch = true
set.ignorecase = true

set.matchtime = 1
set.modeline = true
set.number = true
-- set.relativenumber = true
-- set.signcolumn = "yes:1"

set.belloff = "all"
set.shortmess:append("F")

set.termguicolors = true
set.pumblend = 16
set.winblend = 16
set.winborder = "single"
set.cmdheight = 0
set.showcmd = true
set.showcmdloc = "statusline"

set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
set.autoindent = true
set.smartindent = true
set.smarttab = true
set.expandtab = true

set.wrap = false
set.list = true

-- set.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

set.shell = "pwsh.exe"
set.shellcmdflag = "-c"
set.shellquote = ""
set.shellxquote = ""
-- set.shellpipe = ">%s\\ 2>&1"
-- set.shellredir =  ">%s\\ 2>&1"
set.modifiable = true

set.undofile = true
set.undodir = vim.fn.expand("$HOME/AppData/Local/nvim-data/undo")

