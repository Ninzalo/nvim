local config = function()
	local spectre = require("spectre")

	local config = {
		result_padding = "",
		default = {
			replace = {
				cmd = "sed",
			},
		},
	}

	spectre.setup(config)
end

return {
	"nvim-pack/nvim-spectre",
	config = config,
}
