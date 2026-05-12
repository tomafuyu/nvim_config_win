local no = require("vc.no")
local set = vim.opt
local os = vim.loop.os_uname().sysname

if os == "Windows_NT" then

    no("<Leader>d", "\"*d")
    no("<Leader>y", "\"*y")
    no("<Leader>Y", "\"*Y")
    no("<Leader>p", "\"*p")
    no("<Leader>P", "\"*P")

    set.undodir = vim.fn.expand("$HOME/AppData/Local/nvim-data/undo")

    set.shell = "pwsh.exe"
    set.shellcmdflag = "-c"
    set.shellquote = ""
    set.shellxquote = ""
    -- set.shellpipe = ">%s\\ 2>&1"
    -- set.shellredir =  ">%s\\ 2>&1"

elseif os == "Linux" then

    no("<Leader>d", "\"+d")
    no("<Leader>y", "\"+y")
    no("<Leader>Y", "\"+Y")
    no("<Leader>p", "\"+p")
    no("<Leader>P", "\"+P")

    set.undodir = vim.fn.expand("~/.local/share/nvim/undo")

end

