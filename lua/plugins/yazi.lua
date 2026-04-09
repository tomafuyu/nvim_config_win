return {
    "mikavilpas/yazi.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    enabled = vim.g.rich,
    cmd = {
        "Yazi",
    },
    keys = {
        { "gy", "<Cmd>Yazi<CR>", desc = "current file" },
        { "gY", "<Cmd>Yazi cwd<CR>", desc = "nvim's working directory" },
    },
    opts = {},
}

