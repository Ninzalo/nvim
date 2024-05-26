local config = function()
	local conform = require("conform")

	local conform_config = function()
		local formatters_by_ft = {}
		for _, opts in pairs(require("languages")) do
			if opts.formatters ~= nil then
				for name, formatter in pairs(opts.formatters) do
					formatters_by_ft[name] = formatter
				end
			end
		end
		return {
			formatters_by_ft = formatters_by_ft,
			format_on_save = {
				lsp_fallback = true,
				async = false,
				timeout_ms = 1000,
			},
		}
	end

	conform.setup(conform_config())
end

return {
	"stevearc/conform.nvim",
	lazy = true,
	event = { "BufReadPre", "BufNewFile" }, -- to disable, comment this out
	config = config,
}
