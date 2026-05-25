local hi = require("vc").hi
local p = require("color")

hi("CursorLineNr", { fg = p.alice })
hi("LineNr",       { fg = p.gray })
hi("CursorLine",   { bg = p.none, underline = true })
hi("CursorColumn", { bg = p.black3 })
hi("WinSeparator", { fg = p.blue })
hi("FloatBorder",  { fg = p.blue })

hi("Normal",       { fg = p.white, bg = p.none })
hi("Title",        { fg = p.deep })
hi("Statement",    { fg = p.deep })
hi("PreProc",      { fg = p.deep })
hi("Type",         { fg = p.deep })
hi("Special",      { fg = p.sky })
hi("Identifier",   { fg = p.cyan })
hi("Function",     { fg = p.pale })
hi("Delimiter",    { fg = p.wheat })
hi("Operator",     { fg = p.purple})
hi("Constant",     { fg = p.green })
hi("Number",       { fg = p.lime })
hi("String",       { fg = p.pink })
hi("Comment",      { fg = p.steel, italic = true })
hi("Search",       { reverse = true })

vim.fn.matchadd("FullWidthSpace", "　")
hi("FullWidthSpace", { bg = "#666622" })

-- hi("@lsp.typemod.variable.defaultLibrary.javascript", { fg = "#1984ee" })

-- hi("Todo",         { bg = "#111111" })
-- hi("NormalFloat", { bg = "#667788" }) -- e.g. lazy.nvim
-- hl("sassClass", { fg = "#99ffbb" })
-- hl("sassID",    { fg = "#dada55" })
-- #a5a500

