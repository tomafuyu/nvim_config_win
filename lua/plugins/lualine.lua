local c = {
    black  = "#111111",
    grayd  = "#333333",
    graym  = "#888888",
    grayl  = "#bbbbbb",
    white  = "#eeeeee",
    red    = "#ff7766",
    yellow = "#ddee77",
    green  = "#99ee55",
    blue   = "#88ccff",
    purple = "#8877ff",
}

local t = {
    normal = {
        a = { fg = c.black, bg = c.blue },
        b = { fg = c.black, bg = c.graym },
        c = { fg = c.grayl, bg = c.grayd },
    },
    insert  = { a = { fg = c.black, bg = c.green } },
    visual  = { a = { fg = c.black, bg = c.purple } },
    replace = { a = { fg = c.black, bg = c.red } },
    inactive = {
        a = { fg = c.grayl, bg = c.grayd },
        b = { fg = c.grayl, bg = c.black },
        c = { fg = c.grayl, bg = c.grayd },
    }
}

local function fmt_tab(name, context)
    local tab = vim.api.nvim_list_tabpages()[context.tabnr]
    if not tab then return name end
    local bufs = {}
    for _, w in ipairs(vim.api.nvim_tabpage_list_wins(tab)) do
        if vim.api.nvim_win_get_config(w).relative == "" then
            local n = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
            n = n ~= "" and vim.fn.fnamemodify(n, ":t") or "/???/"
            if (not vim.startswith(n, "NvimTree")) then
                table.insert(bufs, n)
            end
        end
    end
    return vim.api.nvim_tabpage_get_number(tab) .. " " .. table.concat(bufs, " | ")
end

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    priority = 100,
    opts = {
        options = {
            theme = t, -- wombat
            icons_enabled = true,
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            -- ignore_focus = {},
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
                    max_length = vim.o.columns*2/3,
                    fmt = fmt_tab,
                }
            },
            lualine_y = { "reg_recording" },
            lualine_z = {
                {
                    function() return vim.api.nvim_get_mode().mode end, -- [NOTE] will be changed by submode
                    color = { gui = "bold" }
                },
            },
        },
        sections = {
            lualine_a = {
                "branch",
                {
                    "filename",
                    path = 1,
                    file_status = false,
                    shorting_target = 32,
                },
            },
            lualine_b = {},
            lualine_c = {
                { "", draw_empty = true, component_separators = { left = " " } },
                {
                    "buffers",
                    mode = 3,
                    padding = 0,
                    icons_enabled = false,
                    show_modified_status = false,
                    component_separators = { left = "" },
                    symbols = { alternate_file = "" },
                    buffers_color = { active = { fg = c.white, gui = "bold" } },
                },
                "%S", -- set showcmd, showcmdloc
            },
            lualine_x = {
                "searchcount",
                "selectioncount",
                "location",
                "%B",
            },
            lualine_y = {
                "diagnostics",
                {
                    "lsp_status",
                    symbols = { spinner = { "|", "/", "-", "\\" } }
                },
            },
            lualine_z = {
                { "encoding", show_bomb = true },
                "fileformat",
                "filetype",
                "progress",
            },
        },
    },
}

