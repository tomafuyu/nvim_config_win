vim.lsp.config("autohotkey_lsp", {
	cmd = {
		"node",
		vim.fn.expand("$HOME/source/vscode-autohotkey2-lsp/server/dist/server.js"),
		"--stdio"
	},
	filetypes = {"ahk", "autohotkey", "ah2"},
	init_options = {
		locale = "en-us",
		InterpreterPath = "C:/Program Files/AutoHotkey/v2/AutoHotkey.exe",
	},
	single_file_support = true,
	flags = {debounce_text_changes = 500},
})

