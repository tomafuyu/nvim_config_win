local hi = require("vc.hi")
local p = require("color")
hi("TreesitterContext", { bg = p.black3 })
hi("TreesitterContextLineNumber", { bg = p.none })

return {
    {
        "nvim-treesitter/nvim-treesitter",
        enabled = vim.g.rich,
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
        enabled = vim.g.rich,
        opts = {
            multiwindow = true,
            separator = "~",
        },
    },
}

