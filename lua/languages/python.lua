local M = {}

M.treesitter_to_install = { "python" }
M.lsp_configs = {
	pyright = {
		autostart = true,
		settings = {
			python = {
				analysis = {
					typeCheckingMode = "off",
				},
			},
		},
	},
	ruff_lsp = {
		autostart = true,
		init_options = {
			settings = {
				args = {
					"--ignore",
					"I001",
				},
			},
		},
	},
}
M.formatters = {
	python = {
		"ruff",
		"isort",
		"black",
	},
}
M.linters = { python = { "ruff", "flake8", "pylint" } }

return M
