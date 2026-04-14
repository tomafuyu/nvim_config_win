return {
    "smoka7/hop.nvim",
    version = "*",
    config = function()
        local hop = require("hop")
        hop.setup({ keys = "ojekilacyrdtunqsvm.p,w;/xbzfgh" })

        local no = require("vc.no")
        no("<Leader>c", hop.hint_char1)
        no("<Leader>w", hop.hint_words)
        no("<Leader>W", function() hop.hint_patterns({}, "\\S\\+") end)
        no("<Leader>;", function() hop.hint_patterns({}, "[=,;'\"<>(){}\\[\\]^$]\\+") end)
        no("<Leader>s", hop.hint_lines_skip_whitespace)
        no("<Leader>a", hop.hint_anywhere)

        local nn = require("vc.nn")
        nn("<Leader>e", function() hop.hint_lines_skip_whitespace({multi_windows = true}) end)
    end,
}

