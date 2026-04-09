vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.rich = true

if vim.g.vscode then require("vsc") return end

require("vc.nn")("<Leader>z", "<Cmd>Lazy<CR>")
require("config.lazy")
require("lazy").setup{
    ui = { border = "double" },
    checker = { enabled = false },
    spec = { import = "plugins" },
}

require("options")
require("keymaps")
require("highlights")
require("commands")

vim.lsp.enable{
    "lua_ls",
    "powershell_es",
    "autohotkey_lsp",
    "rust_analyzer",
    "pyright",
    "tinymist",
    -- "emmet_language_server",
    -- "emmet_ls",
    "cssls",
    "ts_ls",
    "clangd",
    "vimls",
    -- "jdtls",
}

