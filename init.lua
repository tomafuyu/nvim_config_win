vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- vim.cmd[[
-- 	"nn qq q
-- 	nmap e g
-- 	nn ee gg
-- 	nn E G
-- 	omap e g
-- 	ono ee gg
-- 	ono E G
-- ]]

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

