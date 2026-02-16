local hi = require("vc.hi")

hi("CursorLineNr", { fg = "#cceeff" })
hi("LineNr",       { fg = "#a0a0a0" })
hi("CursorLine",   { bg = "NONE", underline = true })
hi("CursorColumn", { bg = "#303040" })
hi("WinSeparator", { fg = "#00aaee" })

hi("Normal",       { fg = "#eeeeee", bg = "NONE" })
hi("Statement",    { fg = "#00bbff" })
hi("PreProc",      { fg = "#00bbff" })
hi("Type",         { fg = "#00bbff" })
hi("Special",      { fg = "#11ccff" })
hi("Identifier",   { fg = "#44eeff" })
hi("Function",     { fg = "#aaffcc" })
hi("Delimiter",    { fg = "#eeddbb" })
hi("Operator",     { fg = "#bb88ee" })
hi("Constant",     { fg = "#00dd00" })
hi("Number",       { fg = "#33ff55" })
hi("String",       { fg = "#ee88ee" })
hi("Comment",      { fg = "#88bbdd", italic = true })
hi("Todo",         { bg = "#111111" })
hi("Search",       { fg = "#001111", bg = "#ffffee" })
hi("Title",        { fg = "#00bbff" })

vim.fn.matchadd("FullWidthSpace", "　")
hi("FullWidthSpace", { bg = "#666622" })

hi("@lsp.typemod.variable.defaultLibrary.javascript", { fg = "#1984ee" })

-- hl("NormalFloat", { bg = "#667788" })
-- hl("sassClass", { fg = "#99ffbb" })
-- hl("sassID",    { fg = "#dada55" })
-- #a5a500

