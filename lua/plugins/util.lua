return {
    {
        "cohama/lexima.vim",
    },
    {
        "andymass/vim-matchup",
        -- enabled = false,
        opts = {
            treesitter = {
                stopline = 500,
            },
        },
    },
    {
        "wellle/targets.vim",
    },
    {
        "michaeljsmith/vim-indent-object",
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
        "nvim-mini/mini.align",
        keys = {
            { "ga" },
            { "gA" },
        },
        opts = {},
    },
    {
        "norcalli/nvim-colorizer.lua",
        cmd = {
            "ColorizerAttachToBuffer",
            "ColorizerDetachFromBuffer",
            "ColorizerReloadAllBuffers",
            "ColorizerToggle",
        },
        config = function()
            require("colorizer").setup({ "*" }, {
                name = false,
                RGB = true,
                RRGGBBAA = true,
                rgb_fn = true,
                hsl_fn = true,
            })
        end
    },
}

