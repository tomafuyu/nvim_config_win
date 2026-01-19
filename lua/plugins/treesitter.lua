return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        build = ":TSUpdate",
        opts = {},
        config = function()
            require("nvim-treesitter.configs").setup({
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = { "markdown" },
                },
            })
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

