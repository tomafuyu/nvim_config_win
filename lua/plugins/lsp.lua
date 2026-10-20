return {
	{ "neovim/nvim-lspconfig", priority = 200 },
	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "LspAttach",
		-- keys = {
		-- 	{
		-- 		"<Leader>dc",
		-- 		function ()
		-- 			local msg = require("tiny-inline-diagnostic")
		-- 				.get_diagnostic_under_cursor().message
		-- 			if not msg then return end
		-- 			vim.fn.setreg('+', msg)
		-- 		end
		-- 	}
		-- },
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

