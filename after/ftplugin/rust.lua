vim.lsp.config("rust_analyzer", {
    settings = {
        ["rust-analyzer"] = {
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                buildScripts = {
                    enable = true,
                },
            },
            procMacro = {
                enable = false,
            },
        },
    },
    -- on_attach = function(client, bufnr)
    --     vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
    -- end
})
-- vim.diagnostic.config({
--     update_in_insert = true,
-- })

