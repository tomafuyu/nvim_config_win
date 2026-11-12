local hi = require("vc").hi
local p = require("color")
hi("TreesitterContext", { bg = p.black1 })
hi("TreesitterContextLineNumber", { bg = p.none })

return {
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		priority = 200,
		build = ':TSUpdate',
		opts = {
			install_dir = vim.fn.stdpath('data') .. '/site',
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

