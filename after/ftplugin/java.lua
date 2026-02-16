vim.lsp.config("jdtls", {
    cmd = {
        "jdtls",
        "-configuration", "C:\\app\\jdt-language-server\\config_win",
        "-jar", "C:\\app\\jdt-language-server\\plugins\\org.eclipse.equinox.launcher_1.7.0.v20250519-0528.jar",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xmx1g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",
        "-data", vim.fn.getcwd(),
    },
})

-- if vim.fn["exists"]("b:match_words") then
--     vim.b.match_words = vim.b.match_words .. ",\\<if\\>:\\<else if\\>:\\<else\\>"
-- else
--     vim.b.match_words = "\\<if\\>:\\<else if\\>:\\<else\\>"
-- end

vim.b.match_words = '\\<if\\>:\\<else if\\>:\\<else\\>'
-- vim.b.match_pairs = { ['"""'] = '"""' }

-- vim.lsp.enable("jdtls")

