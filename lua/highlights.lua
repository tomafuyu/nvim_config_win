local hi = require("vc").hi
local c = require("color")

hi("CursorLineNr", { fg = c.alice })
hi("LineNr",       { fg = c.gray })
hi("CursorLine",   { bg = c.navy })
hi("CursorColumn", { bg = c.navy })
hi("WinSeparator", { fg = c.blue })
hi("NormalFloat",  { bg = c.float })
hi("FloatBorder",  { fg = c.blue, bg = c.float })

hi("Normal",       { fg = c.white, bg = c.none })
hi("Title",        { fg = c.deep })
hi("Statement",    { fg = c.deep })
hi("PreProc",      { fg = c.deep })
hi("Type",         { fg = c.deep })
hi("Special",      { fg = c.sky })
hi("Identifier",   { fg = c.cyan })
hi("Function",     { fg = c.pale })
hi("Delimiter",    { fg = c.wheat })
hi("Operator",     { fg = c.purple})
hi("Constant",     { fg = c.green })
hi("Number",       { fg = c.lime })
hi("String",       { fg = c.pink })
hi("Comment",      { fg = c.steel, italic = true })
hi("Search",       { reverse = true })

vim.fn.matchadd("FullWidthSpace", "　")
hi("FullWidthSpace", { bg = "#666622" })

-- hi("@lsp.typemod.variable.defaultLibrary.javascript", { fg = "#1984ee" })

-- hi("Todo",         { bg = "#111111" })
-- hi("NormalFloat", { bg = "#667788" }) -- e.g. lazy.nvim
-- hl("sassClass", { fg = "#99ffbb" })
-- hl("sassID",    { fg = "#dada55" })
-- #a5a500

