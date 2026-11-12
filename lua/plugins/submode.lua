local w = {
	mode = "n",
	enter = "<Leader>r",
	leave = { "q", "<Esc>" },
	default = function(m)
		m("b", "<C-w>b") -- bot
		m("k", "<C-w>-")
		m("j", "<C-w>+")
		m("h", "<C-w><")
		m("l", "<C-w>>")
		m("K", "<C-w>K")
		m("J", "<C-w>J")
		m("H", "<C-w>H")
		m("L", "<C-w>L")
		m("r", "<C-w>r")
		m("R", "<C-w>R")
		m("t", "<C-w>t") -- top right
		m("T", "<C-w>T") -- tab
		m("x", "<C-w>x") -- exchange
		m("=", "<C-w>=")
		m("|", "<C-w>|") -- widest, width n
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

