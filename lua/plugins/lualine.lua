local c = {
    black  = "#111111",
    grayd  = "#333333",
    graym  = "#888888",
    grayl  = "#bbbbbb",
    white  = "#eeeeee",
    red    = "#ff7766",
    yellow = "#ddee77",
    green  = "#99ee55",
    def    = "#ddeeff",
    blue   = "#88ccff",
    purple = "#8877ff",
}

local t = {
    normal = {
        a = { fg = c.black, bg = c.blue },
        b = { fg = c.black, bg = c.graym },
        c = { fg = c.grayl, bg = c.grayd },
    },
    insert = {
        a = { fg = c.black, bg = c.green }
    },
    visual = {
        a = { fg = c.black, bg = c.purple }
    },
    replace = {
        a = { fg = c.black, bg = c.red }
    },
    inactive = {
        a = { fg = c.grayl, bg = c.grayd },
        b = { fg = c.grayl, bg = c.black },
        c = { fg = c.grayl, bg = c.grayd },
    }
}

return {
    "nvim-lualine/lualine.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    opts = {
        options = {
            icons_enabled = true,
            -- theme = "wombat",
            theme = t,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            disabled_filetypes = {
                statusline = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = true,
            globalstatus = true,
            refresh = {
                statusline = 100,
                tabline = 100,
            },
        },
        tabline = {
            lualine_a = {
                {
                    "tabs",
                    mode = 1,
                    max_length = vim.o.columns - 8,
                    fmt = function(name, context)
                        local tabs = vim.api.nvim_list_tabpages()
                        local tab = tabs[context.tabnr]
                        if not tab then return name end
                        local wins = vim.api.nvim_tabpage_list_wins(tab)
                        -- local win = vim.api.nvim_tabpage_get_win(tab)
                        local bufs = {}
                        for _, w in ipairs(wins) do
                            if vim.api.nvim_win_get_config(w).relative == "" then
                                local i = vim.api.nvim_win_get_buf(w)
                                local n = vim.api.nvim_buf_get_name(i)
                                n = n ~= "" and vim.fn.fnamemodify(n, ":t") or "?"
                                if (not vim.startswith(n, "NvimTree")) then
                                    table.insert(bufs, n)
                                end
                            end
                        end
                        return table.concat(bufs, " | ")
                    end
                }
            },
            lualine_x = {
                {
                    "filename",
                    path = 4,
                    file_status = false,
                    -- shorting_target = 40,
                },
            },
        },
        sections = {
            lualine_a = {
                {
                    "mode",
                    color = { gui = "bold" },
                },
                "reg_recording",
            },
            lualine_b = {
                "branch",
            },
            lualine_c = {
                { "", draw_empty = true, component_separators = { left = " " } },
                {
                    "buffers",
                    mode = 3,
                    padding = 0,
                    icons_enabled = false,
                    show_modified_status = false,
                    component_separators = { left = "", right = "" },
                    symbols = {
                        alternate_file = "",
                    },
                    buffers_color = {
                        active = { fg = c.white, gui = "bold" },
                    },
                },
            },
            lualine_x = {
                "searchcount",
                "selectioncount",
                "location",
                "%B",
                -- "%S"
            },
            lualine_y = {
                {
                    "diagnostics",
                    sources = { "nvim_lsp" },
                },
                {
                    "lsp_status",
                    symbols = {
                        spinner = { "|", "/", "-", "\\" }
                    }
                },
            },
            lualine_z = {
                { "encoding", show_bomb = true },
                "fileformat",
                "filetype",
                "progress",
            }
        },
        -- extensions = { "lazy", "oil", "nvim-tree", },
    },
}

