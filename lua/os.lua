local no = require("vc.no")

local os = vim.loop.os_uname().sysname
if os == "Windows_NT" then
    no("<Leader>d", "\"*d")
    no("<Leader>y", "\"*y")
    no("<Leader>Y", "\"*Y")
    no("<Leader>p", "\"*p")
    no("<Leader>P", "\"*P")
    vim.opt.undodir = vim.fn.expand("$HOME/AppData/Local/nvim-data/undo")
elseif os == "Linux" then
    vim.opt.undodir = vim.fn.expand("~/.local/share/nvim/undo")
    no("<Leader>d", "\"+d")
    no("<Leader>y", "\"+y")
    no("<Leader>Y", "\"+Y")
    no("<Leader>p", "\"+p")
    no("<Leader>P", "\"+P")
end

