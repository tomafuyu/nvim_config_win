return {
	"folke/noice.nvim",
	dependencies = {
		"MunifTanjim/nui.nvim",
	},
	-- enabled = false,
	opts = {
		notify = {
			enabled = true,
			view = "mini",
		},
		messages = {
			enabled = true,
			view = "mini",
		},
		lsp = {
			hover = { enabled = false },
			progress = { enabled = false },
			signature = { enabled = false },
		},
		presets = {
			command_palette = false,
		},
		health = { cheker = false },
		views = {
			-- messages = {
				--     size = { height = "auto", },
				-- },
				cmdline_popup = {
					position = { row = 16, col = "50%", },
				},
				popupmenu = {
					position = { row = 19, col = "50%", },
					size = { width = 60, height = 16, },
					focusable = true,
					relative = "editor",
					scrollbar = false,
					border = {
						style = "rounded",
						padding = { 0, 1 },
					},
					win_options = {
						winhighlight = {
							Normal = "Normal",
							FloatBorder = "DiagnosticInfo",
						}
					},
				},
			},
		},
	}

