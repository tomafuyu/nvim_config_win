local vc = require("vc")
local no = vc.no
local nn = vc.nn

return {
	{
		"wellle/targets.vim"
	},
	{
		"michaeljsmith/vim-indent-object"
	},
	{
		"kylechui/nvim-surround",
		version = "^3.0.0",
		opts = {
			move_cursor = "sticky",
		},
	},
	{
		"nvim-mini/mini.align",
		keys = {
			{ "ga", mode = { "n", "x" } },
			{ "gA", mode = { "n", "x" } },
		},
		opts = {},
	},
	{
		"smoka7/hop.nvim",
		version = "*",
		config = function()
			local hop = require("hop")
			hop.setup({ keys = "ntcshmprjklwfbzxyuovgaied" })
			no("<Leader>c", hop.hint_char1)
			no("<Leader>w", hop.hint_words)
			no("<Leader>W", function() hop.hint_patterns({}, "\\S\\+") end)
			no("<Leader>;", function() hop.hint_patterns({}, "[=,;'\"<>(){}\\[\\]^$]\\+") end)
			no("<Leader>s", hop.hint_lines_skip_whitespace)
			no("<Leader>a", hop.hint_anywhere)
			nn("<Leader>e", function() hop.hint_lines_skip_whitespace({multi_windows = true}) end)
		end,
	},
	{
		"monaqa/dial.nvim",
		config = function()
			local a = require("dial.augend")
			require("dial.config").augends:register_group{
				default = {
					a.constant.alias.bool,
					a.constant.alias.Bool,
					a.constant.new{ elements = { "and", "or" }, word = true, cyclic = true },
					a.constant.new{ elements = { "&&", "||" }, word = false, cyclic = true },
				},
			}
			local mp = require("dial.map")
			nn(",", function() mp.manipulate("increment", "normal") end)
		end
	}
}

