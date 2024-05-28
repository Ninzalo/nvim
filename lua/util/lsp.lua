local languages = require("languages")
local M = {}

M.on_attach = function(client, _)
	for _, opts in pairs(languages) do
		if opts.on_attach then
			for name, config in pairs(opts.on_attach) do
				if client.name == name and config.server_capabilities then
					for config_key, config_value in pairs(config.server_capabilities) do
						client.server_capabilities[config_key] = config_value
					end
				end
			end
		end
	end
end

return M
