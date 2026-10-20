return {
	"norcalli/nvim-colorizer.lua",
	cmd = {
		"ColorizerAttachToBuffer",
		"ColorizerDetachFromBuffer",
		"ColorizerReloadAllBuffers",
		"ColorizerToggle",
	},
	keys = {
		"<Leader><Leader>ca",
		"<Leader><Leader>cr",
	},
	opts = {
		name = false,
		RGB = true,
		RRGGBBAA = true,
		rgb_fn = true,
		hsl_fn = true,
	},
	config = function(_, opts)
		require("colorizer").setup({ "*" }, opts)
		require("vc").nn("<Leader><Leader>ca", require("colorizer").attach_to_buffer)
		require("vc").nn("<Leader><Leader>cr", require("colorizer").reload_all_buffers)
	end
}

