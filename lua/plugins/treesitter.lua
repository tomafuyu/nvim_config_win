local hi = require("vc.hi")
hi("TreesitterContext", { bg = "#333333" })
hi("TreesitterContextLineNumber", { bg = "NONE" })

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
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        opts = {
            multiwindow = true,
            separator = "~",
        },
    },
}

