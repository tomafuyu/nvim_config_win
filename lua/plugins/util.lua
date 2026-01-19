return {
    {
        "cohama/lexima.vim",
        event = "VeryLazy",
    },
    {
        "andymass/vim-matchup",
        event = "VeryLazy",
        opts = {},
    },
    {
        "wellle/targets.vim",
        event = "VeryLazy",
    },
    {
        "michaeljsmith/vim-indent-object",
        event = "VeryLazy",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        event = "VeryLazy",
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
        lazy = true,
        cmd = {
            "ColorizerAttachToBuffer",
            "ColorizerDetachFromBuffer",
            "ColorizerReloadAllBuffers",
            "ColorizerToggle",
        },
        config = function()
            require("colorizer").setup({ "*" }, {
                name = false,
                RRGGBBAA = true,
                rgb_fn = true,
                hsl_fn = true,
            })
        end
    },
}

