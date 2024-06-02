local lsp_options = function()
	local tools = require("util.tools")
	local ensure_installed = {}
	for _, opts in pairs(require("languages")) do
		if opts.lsp_configs then
			for name, _ in pairs(opts.lsp_configs) do
				ensure_installed = tools.merge_arrays(ensure_installed, { name })
			end
		end
	end
	return { ensure_installed = ensure_installed, automatic_installation = true }
end

local others_options = function()
	local tools = require("util.tools")
	local ensure_installed = {}
	for _, opts in pairs(require("languages")) do
		-- Install formatters
		if opts.formatters then
			for _, opt in pairs(opts.formatters) do
				ensure_installed = tools.merge_arrays(ensure_installed, opt)
			end
		end
		-- Install linters
		if opts.linters then
			for _, opt in pairs(opts.linters) do
				ensure_installed = tools.merge_arrays(ensure_installed, opt)
			end
		end
	end
	return { ensure_installed = ensure_installed, automatic_installation = true }
end

local config = function()
	local mason_lspconfig = require("mason-lspconfig")
	local mason_tool_installer = require("mason-tool-installer")

	mason_lspconfig.setup(lsp_options())

	mason_tool_installer.setup(others_options())
end

return {
	"williamboman/mason-lspconfig.nvim",
	lazy = false,
	event = "BufReadPre",
	config = config,
	dependencies = { "williamboman/mason.nvim", "WhoIsSethDaniel/mason-tool-installer.nvim" },
}
