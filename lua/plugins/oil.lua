return {
    'stevearc/oil.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    cmd = { "Oil" },
    keys = {
        { "<Leader>o", function() require("oil").toggle_float(nil, { preview = { split = "belowright" } }) end },
    },
    opts = {
        default_file_explorer = false,
        keymaps = {
            ["q"] = { "actions.close", mode = "n" },
        },
        float = {
            max_width = 0.8,
            max_height = 0.8,
            border = "double",
            preview_split = "right",
            win_options = {
                winblend = 28,
            },
        },
    },
}

