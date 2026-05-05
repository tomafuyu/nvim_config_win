require("vc.hi")("TelescopeBorder", { fg = require("color").blue })

return {
    {
        'stevearc/oil.nvim',
        dependencies = { "nvim-tree/nvim-web-devicons" },
        cmd = { "Oil" },
        keys = {
            { "<Leader>o", function() require("oil").toggle_float(nil, { preview = { split = "belowright" } }) end },
        },
        opts = {
            default_file_explorer = false,
            keymaps = {
                ["q"] = { "actions.close", mode = "n" },
                ["K"] = { "actions.preview_scroll_up", mode = "n" },
                ["J"] = { "actions.preview_scroll_down", mode = "n" },
            },
            float = {
                max_width = 0.9,
                max_height = 0.9,
                border = "double",
                preview_split = "right",
                win_options = {
                    winblend = 28,
                },
            },
        },
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { 'nvim-lua/plenary.nvim' },
        cmd = { "Telescope" },
        keys = {
            { "<leader>ff", "<Cmd>Telescope find_files<CR>" },
            { "<leader>fg", "<Cmd>Telescope live_grep<CR>" },
            { "<leader>fb", "<Cmd>Telescope buffers<CR>" },
            { "<leader>fh", "<Cmd>Telescope help_tags<CR>" },
        },
        opts = {
            defaults = {
                borderchars = { "═", "║", "═", "║", "╔", "╗", "╝", "╚" }, -- "╦" "╩" "╬"
            }
        }
    },
    {
        "mikavilpas/yazi.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = { "Yazi" },
        keys = {
            { "gy", "<Cmd>Yazi<CR>", desc = "current file" },
            { "gY", "<Cmd>Yazi cwd<CR>", desc = "nvim's working directory" },
        },
        opts = {},
    },
}

