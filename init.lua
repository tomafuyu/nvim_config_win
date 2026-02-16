vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.matchup_enabled = 1
vim.g.matchup_treesitter_enabled = 1
vim.g.EasyMotion_use_migemo = 1
vim.g["denops#deno"] = "C:\\ProgramData\\scoop\\shims\\deno.exe"

if vim.g.vscode then require("vsc") return end

require("options")
require("keymaps")
require("highlights")
require("commands")

require("vc.nn")("<Leader>z", "<Cmd>Lazy<CR>")
require("config.lazy")
require("lazy").setup({
    checker = { enabled = true, notify = false },
    spec = {
        { "neovim/nvim-lspconfig" },
        { import = "plugins" },
        { "willelz/badapple.nvim", lazy = true, cmd = "BadAppleNvim" },
        { 'nvim-mini/mini.align', version = false, opts = {} },
    },
})

for _, s in ipairs {
    "vimls",
    "clangd",
    "rust_analyzer",
    -- "emmet_language_server",
    -- "emmet_ls",
    "cssls",
    "ts_ls",
    "pyright",
} do vim.lsp.enable(s) end

