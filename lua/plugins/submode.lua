local w = {
	mode = "n",
	enter = "<Leader>r",
	leave = { "q", "<Esc>" },
	default = function(r)
		r("k", "<C-w>-")
		r("j", "<C-w>+")
		r("h", "<C-w><")
		r("l", "<C-w>>")
		r("K", "<C-w>K")
		r("J", "<C-w>J")
		r("H", "<C-w>H")
		r("L", "<C-w>L")
		r("r", "<C-w>r")
		r("R", "<C-w>R")
		r("x", "<C-w>x")
		r("=", "<C-w>=")
		r("|", "<C-w>|")
	end
}

return {
	"pogyomo/submode.nvim",
	version = "6.4.3",
	keys = {
		"<Leader>r",
	},
	config = function()
		local submode = require("submode")
		submode.create("w", w)

		local ll = require("lualine")
		local config = ll.get_config()
		config.tabline.lualine_z[1][1] = function()
			return submode.mode() or vim.api.nvim_get_mode().mode
		end
		ll.setup(config)
	end
}

