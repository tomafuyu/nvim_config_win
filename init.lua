vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_nvim_dir_plugin = 1

require("config.lazy")
require("keymaps")

if vim.g.vscode then
	require("vsc")
	return
end

require("config.last")

require("lazy").setup{
	ui = { border = "double" },
	checker = { enabled = false },
	spec = { import = "plugins" },
}

require("highlights")
require("options")
require("commands")
require("osset")

-- require("fTerm").setup{}

vim.lsp.enable{
	"lua_ls",
	"powershell_es",
	"autohotkey_lsp",
	"rust_analyzer",
	"pyright",
	"tinymist",
	"html",
	"cssls",
	"vtsls",
	"jsonls",
	"taplo",
	"clangd",
	"vimls",
	-- "jdtls",
}

