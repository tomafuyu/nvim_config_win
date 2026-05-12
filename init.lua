vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

if vim.g.vscode then require("vsc") return end

require("vc.nn")("<Leader>z", "<Cmd>Lazy<CR>")
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
require("os")

require("fTerm").setup()

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

