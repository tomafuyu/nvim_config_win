return {
    { "neovim/nvim-lspconfig", priority = 200 },
    {
        "rachartier/tiny-inline-diagnostic.nvim",
        opts = {
            options = {
                multilines = {
                    enabled = true,
                    always_show = true,
                },
            },
        },
    },
}

