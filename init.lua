vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.EasyMotion_use_migemo = 1

if vim.g.vscode then require("vsc") return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- vim.g.matchup_enabled = 1
-- vim.g.matchup_matchparen_enabled = 1
-- vim.g.matchup_motion_enabled = 1
-- vim.g.matchup_text_obj_enabled = 1
vim.g.matchup_treesitter_enabled = 1

require("options")
require("keymaps")
require("highlights")
require("commands")

require("vc.nn")("<Leader>z", "<Cmd>Lazy<CR>")
require("config.lazy")
require("lazy").setup({
    ui = {
        border = "double",
    },
    checker = {
        enabled = false,
    },
    spec = { import = "plugins" },
})

vim.lsp.enable({
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
})

