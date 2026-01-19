return {
    'stevearc/oil.nvim',
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    lazy = true,
    opts = {
        default_file_explorer = false,
        keymaps = {
            ["q"] = { "actions.close", mode = "n" },
        },
        float = {
            max_width = 0.8,
            max_height = 0.8,
            win_options = {
                winblend = 28,
            },
        },
    },
    cmd = { "Oil" },
    keys = {
        { "<Leader>o", function() require("oil").toggle_float() end },
    },
}

