vim.g["denops#deno"] = "C:\\ProgramData\\scoop\\shims\\deno.exe"

return {
    {
        "Shougo/ddc.vim",
        dependencies = {
            "vim-denops/denops.vim",
            "Shougo/pum.vim",
        },
        lazy = false,
        config = function()
            -- vim.fn["denops#server#start"]()
            vim.fn["pum#set_option"]({
                border = "rounded"
            })
            vim.fn["ddc#custom#patch_global"]({
                backspaceCompletion = true,
                ui = "pum",
                uiParams = {
                    pum = {
                        maxItems = 16,
                    },
                },
                sources = {
                    "lsp",
                    -- "nvim-lsp",
                    "around",
                },
                sourceOptions = {
                    _ = {
                        matchers = {
                            "matcher_fuzzy",
                            -- "matcher_head",
                        },
                        sorters = {
                            "sorter_fuzzy",
                            -- "sorter_rank",
                        },
                        converters = {
                            "converter_fuzzy",
                            "converter_remove_overlap",
                        },
                        ignoreCase = true,
                        isVolatile = true,
                        keywordPattern = "[a-zA-Z_]\\k*",
                    },
                    lsp = {
                        mark = "@",
                        -- forceCompletionPattern = "\\.\\w*|=\\w*|->\\w*",
                        forceCompletionPattern = "\\.\\w*|:\\w*|->\\w*",
                    },
                    around = {
                        mark = "A",
                    },
                },
                sourceParams = {
                    lsp = {
                        enableResolveItem = true,
                        enableAdditionalTextEdit = true,
                        -- snippetEngine = vim.fn["denops#callback#register"](
                        --     function(body) vim.fn["vsnip#anonymous"](body) end
                        -- ),
                        -- snippetEngine = function(body) vim.fn["vsnip#anonymous"](body) end
                    },
                },
            })
            vim.fn["ddc#enable"]()

            local function i(k, n)
                vim.keymap.set("i", k, function() return
                    vim.fn["pum#visible"]() and "<Cmd>call pum#map#insert_relative("..n..")<CR>" or k
                end, { expr = true, noremap = true })
            end
            i("<Tab>"  , "+1")
            i("<S-Tab>", "-1")
            i("<Down>" , "+1")
            i("<Up>"   , "-1")
        end,
    },
    "Shougo/ddc-ui-pum",
    "tani/ddc-fuzzy",
    "Shougo/ddc-source-lsp",
    "Shougo/ddc-source-around",
    -- "Shougo/ddc-filter-sorter_rank",
    -- "Shougo/ddc-filter-matcher_head",
    "Shougo/ddc-filter-converter_remove_overlap",
    {
        "uga-rosa/ddc-source-lsp-setup",
        opts = {},
        -- config = function()
        --     vim.lsp.enable("denols")
        -- end
    },
    -- "hrsh7th/vim-vsnip",
    -- "hrsh7th/vim-vsnip-integ",
    -- "uga-rosa/ddc-source-vsnip",
}

