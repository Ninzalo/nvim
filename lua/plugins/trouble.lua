return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	cmd = { "TroubleToggle" },
	keys = {},
	opts = {
		use_diagnostic_signs = true,
		action_keys = {
			close = { "q", "<esc>" },
			cancel = "<c-e>",
			toggle_fold = { "za", "o" },
			toggle_mode = "m",
		},
	},
}
