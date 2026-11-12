return {
	-- { -- only for win
	-- 	"wsdjeg/smart-ime.nvim",
	-- 	enabled = false,
	-- 	event = "InsertEnter",
	-- 	opts = {
	-- 		switch_key = "insert",
	-- 		save_on = { "InsertLeave" },
	-- 		restore_on = { "InsertEnter" },
	-- 		normalize_on = { "FocusGained" },
	-- 	},
	-- },
	{
		"drop-stones/im-switch.nvim",
		event = { "InsertEnter", "CmdlineEnter" },
		opts = {}
	},
}

