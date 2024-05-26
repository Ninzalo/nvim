local result = {}
local main = {
	lua = require("languages.lua"),
	python = require("languages.python"),
	rust = require("languages.rust"),
	web = require("languages.web"),
}

local other = require("languages.other")

for name, opt in pairs(other) do
	result[name] = opt
end

return require("util.tools").merge_tables(main, result)
