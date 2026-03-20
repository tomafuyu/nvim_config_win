return {
    "folke/noice.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    opts = {
        notify = { enabled = false },
        messages = {
            enabled = true,
            view = "mini"
        },
        lsp = {
            hover = { enabled = false },
            progress = { enabled = false },
            signature = { enabled = false },
        },
        presets = {
            command_palette = false,
        },
        health = { cheker = false },
        views = {
            cmdline_popup = {
                position = { row = 16, col = "50%", },
                size = { width = 80, height = "auto", },
            },
            popupmenu = {
                relative = "editor",
                scrollbar = false,
                position = { row = 19, col = "50%", },
                size = { width = 60, height = 16, },
                border = {
                    style = "rounded",
                    padding = { 0, 1 },
                },
                win_options = {
                    winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" }
                },
            },
        },
    },
}

