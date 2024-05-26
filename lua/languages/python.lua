local M = {}

M.treesitter_to_install = { "python" }
M.lsp_configs = {
	pyright = {
		autostart = true,
		settings = {
			pyright = {
				disableOrganizeImports = true,
			},
			python = {
				analysis = {
					typeCheckingMode = "off",
					ignore = { "*" },
				},
			},
		},
	},
	ruff_lsp = {
		autostart = true,
		init_options = {
			settings = {
				args = {
					"--ignore=N999,S603",
					"--select=E,F,UP,N,I,ASYNC,S,PTH",
					"--line-length=79",
				},
			},
		},
	},
}
M.formatters = {
	python = {
		"ruff",
	},
}
M.linters = {
	python = {
		"ruff",
	},
}

return M
