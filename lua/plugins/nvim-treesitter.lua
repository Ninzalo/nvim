local config = function()
	local configs = require("nvim-treesitter.configs")

	configs.setup({
		ensure_installed = {
			"rust",
			"json",
			"javascript",
			"typescript",
			"yaml",
			"html",
			"css",
			"markdown",
			"bash",
			"lua",
			"dockerfile",
			"solidity",
			"gitignore",
			"python",
			"vue",
			"svelte",
			"toml",
		},
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = config,
}
