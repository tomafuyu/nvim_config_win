require("vc.hi")("TelescopeBorder", { fg = require("color").blue })

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
    },
    enabled = vim.g.rich,
    cmd = {
        "Telescope",
    },
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
}

