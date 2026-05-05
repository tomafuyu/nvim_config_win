local cmd = require("vc.cmd")

cmd("Th", "vertical terminal")
cmd("Tl", "belowright vertical terminal")
cmd("Tk", "horizontal terminal")
cmd("Tj", "belowright terminal")
cmd("Tt", "tab terminal")
cmd("CHLsp", "checkhealth vim.lsp")
cmd("CHTreesitter", "checkhealth vim.treesitter")

vim.cmd[[
    autocmd BufWritePost * if expand('%') != '' && &buftype !~ 'nofile' | mkview | endif
    autocmd BufRead * if expand('%') != '' && &buftype !~ 'nofile' | silent! loadview | endif
    set viewoptions-=options
]]

