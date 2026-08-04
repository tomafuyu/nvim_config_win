-- https://github.com/vscode-neovim/vscode-neovim/issues/540
-- vim.g.matchup_matchparen_deferred = 1

require("config.lazy")
require("lazy").setup({
	checker = { enabled = true, notify = false },
	spec = {
		{ import = "plugins.util" },
	},
})

local vscode = require("vscode")
local function v(cmd)
	return function() vscode.action(cmd) end
end

local vc = require("vc")
local nn = vc.nn

nn("<C-k>", v"editor.action.moveLinesUpAction")
nn("<C-j>", v"editor.action.moveLinesDownAction")

nn("H", v"workbench.action.previousEditor")
nn("L", v"workbench.action.nextEditor")

nn("gk", v"workbench.action.navigateUp")
nn("gj", v"workbench.action.navigateDown")
nn("gh", v"workbench.action.navigateLeft")
nn("gl", v"workbench.action.navigateRight")
nn("gH", v"workbench.action.moveEditorToLeftGroup")
nn("gL", v"workbench.action.moveEditorToRightGroup")
nn("g<", v"workbench.action.moveEditorLeftInGroup")
nn("g>", v"workbench.action.moveEditorRightInGroup")

nn("&", v"workbench.action.closeActiveEditor")
-- nn("<C-s>", "<Cmd>w<Enter>")
-- ino("<C-s>", "<Esc><Cmd>w<Enter>")

nn("go", v"editor.action.showDefinitionPreviewHover")
nn("]d", v"editor.action.marker.next")
nn("[d", v"editor.action.marker.prev")

nn("<Leader><Leader>p", v"workbench.action.showCommands")

nn("<Leader><Leader>r", v"testing.runAtCursor")

nn("<Leader><Leader>tp", v"tinymist.browsingPreview")
nn("<Leader><Leader>ts", v"typst-preview.sync")

