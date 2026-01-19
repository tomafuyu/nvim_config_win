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
        { "jbyuki/venn.nvim", lazy = true, cmd = "VBox", enabled = false },
    },
})

for _, s in ipairs {
    "vimls",
    "lua_ls",
    "clangd",
    "rust_analyzer",
    -- "emmet_language_server",
    -- "emmet_ls",
    "cssls",
    "ts_ls",
    -- "jdtls",
    "pyright",
    "tinymist",
    "powershell_es",
    "autohotkey_lsp",
} do vim.lsp.enable(s) end

-- function _G.Toggle_venn()
--     local venn_enabled = vim.inspect(vim.b.venn_enabled)
--     if venn_enabled == "nil" then
--         vim.b.venn_enabled = true
--         vim.cmd[[setlocal ve=all]]
--         vim.api.nvim_buf_set_keymap(0, "n", "K", "<C-v>k:VBox<CR>", {noremap = true})
--         vim.api.nvim_buf_set_keymap(0, "n", "J", "<C-v>j:VBox<CR>", {noremap = true})
--         vim.api.nvim_buf_set_keymap(0, "n", "L", "<C-v>l:VBox<CR>", {noremap = true})
--         vim.api.nvim_buf_set_keymap(0, "n", "H", "<C-v>h:VBox<CR>", {noremap = true})
--         vim.api.nvim_buf_set_keymap(0, "v", "f", ":VBox<CR>", {noremap = true})
--     else
--         vim.cmd[[setlocal ve=]]
--         vim.api.nvim_buf_del_keymap(0, "n", "J")
--         vim.api.nvim_buf_del_keymap(0, "n", "K")
--         vim.api.nvim_buf_del_keymap(0, "n", "L")
--         vim.api.nvim_buf_del_keymap(0, "n", "H")
--         vim.api.nvim_buf_del_keymap(0, "v", "f")
--         vim.b.venn_enabled = nil
--     end
-- end
-- vim.api.nvim_set_keymap('n', '<leader>q', ":lua Toggle_venn()<CR>", { noremap = true})
