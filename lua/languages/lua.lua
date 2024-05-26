local M = {}

M.treesitter_to_install = { "lua" }
M.lsp_configs = {
	lua_ls = {
		settings = {
			Lua = {
				runtime = { version = "LuaJIT" },
				-- make the language server recognize "vim" global
				diagnostics = {
					globals = { "vim" },
					disable = { "different-requires", "undefined-field" },
				},
				workspace = {
					-- make language server aware of runtime files
					library = {
						vim.fn.expand("$VIMRUNTIME/lua"),
						vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
						vim.fn.stdpath("config") .. "/lua",
					},
					maxPreload = 10000,
					preloadFileSize = 10000,
				},
			},
		},
	},
}
M.formatters = { lua = { "stylua" } }

return M
