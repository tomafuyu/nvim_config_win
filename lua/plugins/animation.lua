return {
	{
		"sphamba/smear-cursor.nvim",
		opts = {
			cursor_color = '#aaeeff',
			smear_between_buffers = true,
			smear_between_neighbor_lines = true,
			scroll_buffer_space = true,
			legacy_computing_symbols_support = false,
			smear_insert_mode = false,
			stiffness = .8,
			damping = .9,
		},
	},
	{
		'nvim-mini/mini.animate',
		version = false,
		opts = {
			cursor = { enable = false },
			scroll = { enable = true  },
			resize = { enable = false },
			open   = { enable = false },
			close  = { enable = false },
		},
	},
}

