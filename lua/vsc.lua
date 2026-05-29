-- https://github.com/vscode-neovim/vscode-neovim/issues/540
-- vim.g.matchup_matchparen_deferred = 1

require("config.lazy")
require("lazy").setup({
    checker = { enabled = true, notify = false },
    spec = {
        { import = "plugins.util_vsc_too" },
    },
})

local vscode = require("vscode")
local function v(cmd) return function() vscode.action(cmd) end end
local vc = require("vc")
local no = vc.no
local nn = vc.nn
local xn = vc.xn
local ino = vc.ino

xn(">", ">gv")
xn("<", "<gv")

no("X", "\"_x")
no("<Leader>d", "\"+d")
no("<Leader>y", "\"+y")
no("<Leader>Y", "\"+Y")
no("<Leader>p", "\"+p")
no("<Leader>P", "\"+P")

no("gk", "H")
no("gj", "L")
no("gh", "^")
no("gl", "$")

nn("U", "<C-r>")

no("+", "<C-a>")
no("-", "<C-x>")

nn("<C-k>", v"editor.action.moveLinesUpAction")
nn("<C-j>", v"editor.action.moveLinesDownAction")

nn("H", v"workbench.action.previousEditor")
nn("L", v"workbench.action.nextEditor")

nn("<Leader>k", v"workbench.action.navigateUp")
nn("<Leader>j", v"workbench.action.navigateDown")
nn("<Leader>h", v"workbench.action.navigateLeft")
nn("<Leader>l", v"workbench.action.navigateRight")
nn("<Leader>H", v"workbench.action.moveEditorToLeftGroup")
nn("<Leader>L", v"workbench.action.moveEditorToRightGroup")
nn("<Leader><", v"workbench.action.moveEditorLeftInGroup")
nn("<Leader>>", v"workbench.action.moveEditorRightInGroup")


nn("<Leader>v", "<C-v>")
nn("<Enter>", "i<Enter><Esc>")
nn("g<Esc>","<Cmd>noh<CR>")
nn("<C-s>", "<Cmd>w<Enter>")
ino("<C-s>", "<Esc><Cmd>w<Enter>")

nn("go", v"editor.action.showDefinitionPreviewHover")
nn("]d", v"editor.action.marker.next")
nn("[d", v"editor.action.marker.prev")

nn("<Leader><Leader>p", v"workbench.action.showCommands")
nn("<Leader><Leader>j", v"workbench.action.togglePanel")
nn("<Leader><Leader>d", v"workbench.debug.action.toggleRepl")
nn("<Leader><Leader>a", v"workbench.action.toggleActivityBarVisibility")

nn("<Leader><Leader>r", v"testing.runAtCursor")

nn("<Leader><Leader>tp", v"tinymist.browsingPreview")
nn("<Leader><Leader>ts", v"typst-preview.sync")

