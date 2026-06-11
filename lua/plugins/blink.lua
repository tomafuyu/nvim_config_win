local hi = require("vc").hi
local c = require("color")
hi("BlinkCmpMenuBorder", { bg = c.float, link = "FloatBorder" })
hi("BlinkCmpMenu", { bg = c.float })

return {
	"saghen/blink.cmp",
	dependencies = {
		"xieyonn/blink-cmp-dat-word",
		"rafamadriz/friendly-snippets",
	},
	version = "1.*",
	opts = {
		keymap = {
			preset = "enter",
		},
		completion = {
			list =  {
				max_items = 64,
			},
			-- accept =  {},
			menu = {
				winblend = 16,
				scrollbar = false,
				draw = {
					treesitter = { "lsp" },
				},
			},
			-- documentation = {}
			-- ghost_text = {},
		},
		-- signature = {},
		fuzzy = { implementation = "prefer_rust_with_warning" },
		sources = {
			default = { "lsp", "path", "snippets", "dw", "buffer" },
			providers = {
				dw = {
					name = "dw",
					module = "blink-cmp-dat-word",
					score_offset = -16,
					opts = {
						paths = {
							vim.fn.stdpath("config") .. "/google-10k-words.txt",
						},
					},
				},
			},
		},
		appearance = {
			nerd_font_variant = "normal",
			-- kind_icons = {},
		},
		cmdline = {
			completion = {
				ghost_text = { enabled = false },
			},
		},
		-- terminal = {},
	},
	-- opts_extend = { "sources.default" },
}

