local vc = require("vc")
-- local m = vc.m
local nm = vc.nm
-- local om = vc.om
local no = vc.no
local nn = vc.nn
local xn = vc.xn
local ino = vc.ino

-- nm("e", "d")

xn(">", ">gv")
xn("<", "<gv")
nn("gG", "ggVG")

no("X", "\"_x")
-- no("gd", "\"+d")
no("gy", "\"+y")
no("gY", "\"+Y")
no("gp", "\"+p")
no("gP", "\"+P")

no("gt", "H")
no("gb", "L")

nn("gk", "<C-w>k")
nn("gj", "<C-w>j")
nn("gh", "<C-w>h")
nn("gl", "<C-w>l")
nn("gK", "<C-w>K")
nn("gJ", "<C-w>J")
nn("gH", "<C-w>H")
nn("gL", "<C-w>L")

nn("<C-k>", "<Cmd>move -2<CR>")
nn("<C-j>", "<Cmd>move +1<CR>")

nn("U", "<C-r>")

no("+", "<C-a>")
no("-", "<C-x>")

nn("H", "gT")
nn("L", "gt")
for i = 1, 9 do nn("g"..i, i.."gt") end
nn("gT", "<Cmd>tabc<CR>")
nn("g<", "<Cmd>tabm -1<CR>")
nn("g>", "<Cmd>tabm +1<CR>")

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

nn("<Leader><Leader>c", "i<C-r>=<C-r>0<CR>") -- calc

