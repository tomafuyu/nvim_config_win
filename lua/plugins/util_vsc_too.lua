return {
    {
        "wellle/targets.vim",
    },
    {
        "michaeljsmith/vim-indent-object",
    },
    {
        "kylechui/nvim-surround",
        version = "^3.0.0",
        opts = {
            move_cursor = "sticky",
        },
    },
    {
        "nvim-mini/mini.align",
        keys = { "ga", "gA" },
        opts = {},
    },
    {
        "monaqa/dial.nvim",
        config = function (_, _)
            local a = require("dial.augend")
            require("dial.config").augends:register_group{
                default = {
                    a.constant.alias.bool,
                    a.constant.alias.Bool,
                    a.constant.new{ elements = { "and", "or" }, word = true, cyclic = true },
                    a.constant.new{ elements = { "&&", "||" }, word = false, cyclic = true },
                },
            }
            local mp = require("dial.map")
            local n = require("vc.nn")
            n(",", function() mp.manipulate("increment", "normal") end)
        end
    }
}

