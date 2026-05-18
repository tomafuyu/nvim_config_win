local no = require("vc.no")
local nn = require("vc.nn")
local xn = require("vc.xn")
local ino = require("vc.ino")

xn(">", ">gv")
xn("<", "<gv")

no("X", "\"_x")

no("gk", "H")
no("gj", "L")
no("gh", "^")
no("gl", "$")

no("+", "<C-a>")
no("-", "<C-x>")

nn("<C-k>", "<Cmd>move -2<CR>")
nn("<C-j>", "<Cmd>move +1<CR>")

nn("H", "gT")
nn("L", "gt")
for i = 1, 9 do nn("<Leader>"..i, i.."gt") end

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
nn("g<Esc>","<Cmd>noh<CR>")
nn("<Leader>v", "<C-v>")

nn("<C-s>", "<Cmd>w<CR>")
ino("<C-s>", "<Esc><Cmd>w<CR>")

nn("&", "<Cmd>qa<CR>")

-- h lsp.txt
nn("grd", vim.diagnostic.open_float)
nn("grc", vim.lsp.buf.declaration)
nn("grf", vim.lsp.buf.definition)

