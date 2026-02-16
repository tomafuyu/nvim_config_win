
-- https://github.com/vscode-neovim/vscode-neovim/issues/540
vim.g.matchup_matchparen_deferred = 1

require("config.lazy")
require("lazy").setup({
    checker = {enabled = true, notify = false},
    spec = {
        { import = "plugins.hophop" },
        { import = "plugins.surround" },
        { "andymass/vim-matchup" },
        { "wellle/targets.vim" },
        { "michaeljsmith/vim-indent-object" },
        { 'nvim-mini/mini.align', version = false, opts = {} },
    },
})

local vscode = require("vscode")
local function v(cmd) return function() vscode.action(cmd) end end
local no = require("vc.no")
local nn = require("vc.nn")
local xn = require("vc.xn")
local ino = require("vc.ino")

xn(">", ">gv")
xn("<", "<gv")

no("<Leader>p", "\"*p")
no("<Leader>P", "\"*P")
no("<Leader>y", "\"*y")

no("gk", "H")
no("gj", "L")
no("gh", "^")
no("gl", "$")

no("+", "<C-a>")
no("-", "<C-x>")

nn("<Enter>", "i<Enter><Esc>")
no("cc", v"editor.action.joinLines")

nn("K", v"editor.action.moveLinesUpAction")
nn("J", v"editor.action.moveLinesDownAction")
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

nn("<Esc><Esc>","<Cmd>noh<CR>")

nn("<C-s>", "<Cmd>w<Enter>")
ino("<C-s>", "<Esc><Cmd>w<Enter>")
nn("<Leader>r", "<Cmd>reg<CR>")
nn("<Leader>v", "<C-v>")

nn("<Leader><Leader>p", v"workbench.action.showCommands")
nn("<C-j>", v"workbench.action.togglePanel")
nn("<Leader>d", v"workbench.debug.action.toggleRepl")
nn("<Leader><Leader>a", v"workbench.action.toggleActivityBarVisibility")

nn("go", v"editor.action.showDefinitionPreviewHover")
nn("]d", v"editor.action.marker.next")
nn("[d", v"editor.action.marker.prev")

nn("<Leader>r", v"testing.runAtCursor")

nn("<Leader><Leader>tp", v"tinymist.browsingPreview")
nn("<Leader><Leader>ts", v"typst-preview.sync")

