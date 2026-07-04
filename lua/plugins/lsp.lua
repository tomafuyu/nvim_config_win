return {
	{ "neovim/nvim-lspconfig", priority = 200 },
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
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

