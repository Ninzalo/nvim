local config = function()
	local mason_lspconfig = require("mason-lspconfig")
	local mason_tool_installer = require("mason-tool-installer")

	mason_lspconfig.setup({
		-- list of servers for mason to install
		ensure_installed = {
			"tsserver",
			"html",
			"cssls",
			"lua_ls",
			"graphql",
			"emmet_ls",
			"pyright",
		},
		-- auto-install configured servers (with lspconfig)
		automatic_installation = true, -- not the same as ensure_installed
	})

	mason_tool_installer.setup({
		ensure_installed = {
			"prettierd", -- prettier formatter
			"stylua", -- lua formatter
			"isort", -- python formatter
			"black", -- python formatter
			"pylint", -- python linter
			"flake8", -- python linter
			"eslint_d", -- js linter
		},
		automatic_installation = true, -- not the same as ensure_installed
	})
end

return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	event = "BufReadPre",
	config = config,
	dependencies = { "williamboman/mason.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim" },
}
