
local no = require("vc.no")
local nn = require("vc.nn")
local xn = require("vc.xn")
local ino = require("vc.ino")

xn(">", ">gv")
xn("<", "<gv")

no("<Leader>d", "\"*d")
no("<Leader>y", "\"*y")
no("<Leader>p", "\"*p")
no("<Leader>P", "\"*P")
no("X", "\"_x")

no("gk", "H")
no("gj", "L")
no("gh", "^")
no("gl", "$")

no("+", "<C-a>")
no("-", "<C-x>")

nn("K", "<Cmd>move -2<CR>")
nn("J", "<Cmd>move +1<CR>")
nn("H", "gT")
nn("L", "gt")
nn("<Leader>k", "<C-w>k")
nn("<Leader>j", "<C-w>j")
nn("<Leader>h", "<C-w>h")
nn("<Leader>l", "<C-w>l")
nn("<Leader>K", "<C-w>K")
nn("<Leader>J", "<C-w>J")
nn("<Leader>H", "<C-w>H")
nn("<Leader>L", "<C-w>L")
nn("gt", "<Cmd>tabc<CR>")
nn("<Leader><", "<Cmd>tabm -1<CR>")
nn("<Leader>>", "<Cmd>tabm +1<CR>")

nn("<CR>", "i<CR><Esc>")
nn("<Esc><Esc>","<Cmd>noh<CR>")
nn("<Leader>r", "<Cmd>reg<CR>")
nn("<Leader>v", "<C-v>")

no("cc", "<Cmd>j<CR>")
no("cC", "<Cmd>j!<CR>")

nn("<C-s>", "<Cmd>w<CR>")
ino("<C-s>", "<Esc><Cmd>w<CR>")

nn("&", "<Cmd>qa<CR>")

nn("grd", vim.diagnostic.open_float)
nn("grc", vim.lsp.buf.declaration)
nn("grf", vim.lsp.buf.definition)
nn("grh", vim.lsp.buf.hover)

