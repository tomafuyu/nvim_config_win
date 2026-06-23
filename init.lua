vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Cut worD Edit
vim.cmd[[
	no c d
	no C D
	no d e
	no D E
	no e c
	no E C
]]

if vim.g.vscode then require("vsc") return end

require("config.lazy")
require("lazy").setup{
	ui = { border = "double" },
	checker = { enabled = false },
	spec = { import = "plugins" },
}

require("highlights")
require("options")
require("keymaps")
require("commands")
require("osset")

require("fTerm").setup{}

-- vim.treesitter.start()

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
	"clangd",
	"vimls",
	-- "jdtls",
}

