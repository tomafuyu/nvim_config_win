-- vim.g.matchup_enabled = 1
-- vim.g.matchup_matchparen_enabled = 1
-- vim.g.matchup_motion_enabled = 1
-- vim.g.matchup_text_obj_enabled = 1
vim.g.matchup_treesitter_enabled = 1

return {
    {
        "cohama/lexima.vim",
    },
    {
        "andymass/vim-matchup",
        enabled = false,
        opts = {
            treesitter = {
                stopline = 500,
            },
        },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
            indent = {
                char = "▏"
            },
            scope = {
                enabled = false,
            }
        },
    },
    {
        "norcalli/nvim-colorizer.lua",
        cmd = {
            "ColorizerAttachToBuffer",
            "ColorizerDetachFromBuffer",
            "ColorizerReloadAllBuffers",
            "ColorizerToggle",
        },
        opts = {
            name = false,
            RGB = true,
            RRGGBBAA = true,
            rgb_fn = true,
            hsl_fn = true,
        },
        config = function(_, opts)
            require("colorizer").setup({ "*" }, opts)
        end
    },
}

