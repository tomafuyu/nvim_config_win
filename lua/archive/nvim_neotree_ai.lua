
local hi = require("vc").hi
local p = require("color")

hi("NeoTreeNormal", { fg = p.gray })
hi("NeoTreeFileNameOpened", { fg = p.white })
hi("NeoTreeGitIgnored", { fg = p.gray })

local function copy_path(state, kind)
	local node = state.tree:get_node()
	if not node or not node.path then
		return
	end

	local path = node.path
	local value

	if kind == "absolute" then
		value = vim.fn.fnamemodify(path, ":p")
	elseif kind == "relative" then
		value = vim.fn.fnamemodify(path, ":.")
	elseif kind == "basename" then
		value = vim.fn.fnamemodify(path, ":t:r")
	elseif kind == "filename" then
		value = vim.fn.fnamemodify(path, ":t")
	end

	if value then
		vim.fn.setreg("+", value)
		vim.notify(value)
	end
end

local function open_selected_tabs(state)
	local paths = {}

	for path, selected in pairs(state.selected or {}) do
		if selected then
			table.insert(paths, path)
		end
	end

	table.sort(paths)

	for _, path in ipairs(paths) do
		if vim.fn.isdirectory(path) == 0 then
			vim.cmd.tabedit(vim.fn.fnameescape(path))
		end
	end

	state.selected = {}
end

return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	version = "*",
	lazy = false,
	priority = 100,
	enabled = false,

	keys = {
		{
			"<Leader>t",
			"<Cmd>Neotree toggle filesystem left<CR>",
			desc = "Toggle neo-tree",
		},
	},

	opts = {
		default_source = "filesystem",
		sources = {
			"filesystem",
			"buffers",
			"git_status",
		},

		popup_border_style = "rounded",
		enable_cursor_hijack = true,
		enable_opened_markers = true,

		-- デフォルトのマッピングを無効化
		use_default_mappings = false,

		-- インデント・ファイル名
		default_component_configs = {
			indent = {
				indent_size = 4,
				padding = 1,
				with_markers = true,
			},
			name = {
				highlight_opened_files = "all",
			},
			git_status = {
				align = "left",
			},
		},

		-- ファイルを表示するウィンドウ
		window = {
			position = "left",
			width = 32,
			mappings = {
				["o"] = "open",
				["v"] = "open_vsplit",
				["s"] = "open_split",
				["t"] = "open_tabnew",
				["i"] = "show_file_details",

				["a"] = "add",
				["x"] = "cut_to_clipboard",
				["p"] = "paste_from_clipboard",
				["d"] = "trash",
				["D"] = "delete",
				["y"] = "copy_to_clipboard",

				["ca"] = function(state)
					copy_path(state, "absolute")
				end,
				["cr"] = function(state)
					copy_path(state, "relative")
				end,
				["cb"] = function(state)
					copy_path(state, "basename")
				end,
				["cc"] = function(state)
					copy_path(state, "filename")
				end,

				["rr"] = "rename",
				["rb"] = "rename_basename",

				["R"] = "refresh",
				["e"] = "expand_all_nodes",
				["E"] = "close_all_nodes",

				["q"] = "close_window",
				["g?"] = "show_help",

				-- 複数選択
				["m"] = "select",
				["M"] = "clear_selection",
				["X"] = "move",
				["T"] = open_selected_tabs,
			},
		},

		filesystem = {
			bind_to_cwd = true,
			group_empty_dirs = true,
			hijack_netrw_behavior = "open_default",

			filtered_items = {
				visible = false,
				hide_dotfiles = true,
				hide_gitignored = false,
				hide_ignored = false,
				hide_hidden = false,
			},

			window = {
				mappings = {
					["u"] = "navigate_up",
					["O"] = "set_root",
					["U"] = "navigate_up",

					["."] = "toggle_hidden",

					["f"] = "filter_on_submit",
					["F"] = "clear_filter",
				},
			},
		},
	},
}

