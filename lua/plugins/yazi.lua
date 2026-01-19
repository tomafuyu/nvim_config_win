return {
    "mikavilpas/yazi.nvim",
    lazy = true,
    dependencies = {
         "nvim-lua/plenary.nvim",
    },
    cmd = {
        "Yazi",
    },
    keys = {
        { "gy", "<Cmd>Yazi<CR>", desc = "current file" },
        { "gY", "<Cmd>Yazi cwd<CR>", desc = "nvim's working directory" },
    },
    opts = {},
}

