local M = {}

M.treesitter_to_install = { "python" }
M.lsp_configs = {
	pyright = {
		autostart = true,
		filetypes = { "python" },
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
		filetypes = { "python" },
		init_options = {
			settings = {
				fixAll = true,
				lint = {
					enable = true,
					args = {
						"--ignore=S603,S110,S311,S112",
						"--ignore=N999,TID251,ANN101,ANN102,BLE001",
						"--ignore=D107,D100",
						"--select=A,B,D,E,F,I,N,Q,R,S,W,UP,C4,C90,ANN,BLE,FBT,ASYNC,COM",
						"--select=PIE,TID,ARG,PTH,PL,EM",
						"--line-length=79",
					},
				},
				format = {
					args = {
						"--line-length=79",
						"--no-cache",
					},
				},
			},
		},
	},
}

M.on_attach = {
	ruff_lsp = {
		server_capabilities = {
			hoverProvider = false,
		},
	},
}

return M
