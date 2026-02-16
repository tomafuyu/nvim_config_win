return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        opts = {
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = { "markdown" },
            },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
            local hi = require("vc.hi")
            hi("TreesitterContext",           { bg = "#333333" })
            hi("TreesitterContextLineNumber", { bg = "NONE" })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = "VeryLazy",
        opts = {
            multiwindow = true,
            separator = "~",
        }
    },
}

