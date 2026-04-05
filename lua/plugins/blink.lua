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
        keymap = { preset = "default" },
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
                            vim.fn.stdpath("config") .. "/google-10k-words.txt", -- https://github.com/first20hours/google-10000-english
                        },
                    },
                },
            },
        },
        appearance = {
            nerd_font_variant = "normal",
            -- kind_icons = { },
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

--[[
Text = "󰉿",
Method = "󰊕",
Function = "󰊕",
Constructor = "󰒓",

Field = "󰜢",
Variable = "󰆦",
Property = "󰖷",

Class = "󱡠",
Interface = "󱡠",
Struct = "󱡠",
Module = "󰅩",

Unit = "󰪚",
Value = "󰦨",
Enum = "󰦨",
EnumMember = "󰦨",

Keyword = "󰻾",
Constant = "󰏿",

Snippet = "󱄽",
Color = "󰏘",
File = "󰈔",
Reference = "󰬲",
Folder = "󰉋",
Event = "󱐋",
Operator = "󰪚",
TypeParameter = "󰬛",
--]]

