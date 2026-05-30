return {
	"norcalli/nvim-colorizer.lua",
	cmd = {
		"ColorizerAttachToBuffer",
		"ColorizerDetachFromBuffer",
		"ColorizerReloadAllBuffers",
		"ColorizerToggle",
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
	end
}

