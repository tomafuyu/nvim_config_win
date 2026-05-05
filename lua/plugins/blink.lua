local hi = require("vc.hi")
hi("BlinkCmpMenuBorder", { link = "FloatBorder" })

return {
    "saghen/blink.cmp",
    dependencies = {
        "xieyonn/blink-cmp-dat-word",
        "rafamadriz/friendly-snippets",
    },
    version = "1.*",
    opts = {
        keymap = {
            preset = "default",
            ["<Enter>"] = { "accept", "fallback" },
        },
        completion = {
            list =  {
                max_items = 64,
            },
            -- accept =  {},
            menu = {
                winblend = 16,
                scrollbar = false,
                draw = {
                    treesitter = { "lsp" },
                },
            },
            -- documentation = {}
            -- ghost_text = {},
        },
        -- signature = {},
        fuzzy = { implementation = "prefer_rust_with_warning" },
        sources = {
            default = { "lsp", "path", "snippets", "datword", "buffer" },
            providers = {
                datword = {
                    name = "gglw",
                    module = "blink-cmp-dat-word",
                    opts = {
                        paths = {
                            vim.fn.stdpath("config") .. "/google-10k-words.txt",
                        },
                    },
                },
            },
        },
        appearance = {
            nerd_font_variant = "normal",
            -- kind_icons = {},
        },
        cmdline = {
            completion = {
                ghost_text = { enabled = false },
            },
        },
        -- terminal = {},
    },
    -- opts_extend = { "sources.default" },
}

