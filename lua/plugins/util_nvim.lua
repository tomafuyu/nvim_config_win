return {
	{
		"windwp/nvim-autopairs",
		opts = {
			disable_in_macro = false,
		},
		config = function(_, opts)
			local nap = require('nvim-autopairs')
			local Rule = require('nvim-autopairs.rule')
			nap.setup(opts)
			nap.add_rules{
				Rule('$', '$', 'typst'),
			}
		end
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		enabled = false,
		main = "ibl",
		opts = {
			indent = { char = "▏" },
			scope = { enabled = false }
		},
	},
}

