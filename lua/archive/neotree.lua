return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	branch = "v3.x",
	lazy = false,
	priority = 100,
	keys = {
		{
			"<leader>t",
			function()
				require("neo-tree.command").execute({
					action = "focus",
					source = "last",
					position = "float",
					toggle = true,
					reveal = true,
				})
			end,
			desc = "filesystem float",
		},
	},
	--@module 'neo-tree'
	--@type neotree.Config
	opts = {
		default_source = "filesystem",
		sources = {
			"filesystem",
			"buffers",
			-- "git_status",
		},
		source_selector = {
			winbar = true,
			statusline = true,
		},
		popup_border_style = "rounded",
		default_component_configs = {
			indent = {
				indent_size = 4,
			},
		},
		filesystem = {
			bind_to_cwd = true,
			cwd_target = {
				sidebar = "global",
				current = "global",
			},
			hijack_netrw_behavior = "open_current",
		},
		use_default_mappings = false,
		window = {
			position = "float",
			mappings = {
				["?"] = "show_help",

				["'"] = "select",

				["<"] = "prev_source",
				[">"] = "next_source",
				["<BS>"] = "navigate_up",
				["O"] = "set_root",
				["e"] = "toggle_node",
				["o"] = "open",
				["P"] = {
					"toggle_preview",
					config = {
						float = true,
						use_snacks_image = false,
						use_image_nvim = false,
					}
				},

				["s"] = "open_split",
				["v"] = "open_rightbelow_vs",
				["S"] = "open_leftabove_vs",
				["t"] = "open_tabnew",

				["a"] = "add",
				["A"] = "add_directory",
				["d"] = "trash",
				["D"] = "delete",
				["i"] = "show_file_details",

				["r"] = "rename",
				["b"] = "rename_basename",
				["y"] = "copy_to_clipboard",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["C"] = "clear_clipboard",
				["c"] = { "copy", config = { show_path = "relative" } },
				["m"] = { "move", config = { show_path = "relative" } },

				["."] = "toggle_hidden",
				["R"] = "refresh",
			},
		},
	},
}
