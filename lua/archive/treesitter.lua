local hi = require("vc.hi")
local p = require("color")
hi("TreesitterContext", { bg = p.black1 })
hi("TreesitterContextLineNumber", { bg = p.none })

return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "master",
		build = ":TSUpdate",
		opts = {
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = { "markdown" },
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = {
			multiwindow = true,
			separator = "~",
		},
	},
}

