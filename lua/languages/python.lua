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
					"--ignore=N999,S603,TID251,D100,ANN101,ANN102,BLE001,S110,S311",
					"--select=A,B,D,E,F,I,N,Q,R,S,W,UP,C90,ANN,BLE,FBT,ASYNC,COM,C4,EM",
					"--select=PIE,TID,ARG,PTH,PL",
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
