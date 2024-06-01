local function truncate_branch_name(branch)
	if not branch or branch == "" then
		return ""
	end

	-- Match the branch name to the specified format
	local user, team, ticket_number = string.match(branch, "^(%w+)/(%w+)%-(%d+)")

	-- If the branch name matches the format, display {user}/{team}-{ticket_number}, otherwise display the full branch name
	if ticket_number then
		return user .. "/" .. team .. "-" .. ticket_number
	else
		return branch
	end
end

local config = function()
	require("lualine").setup({
		options = {
			theme = "auto",
			globalstatus = true,
			component_separators = { left = "|", right = "|" },
			section_separators = { left = "", right = "" },
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = {
				{ "branch", icon = "", fmt = truncate_branch_name },
				"diagnostics",
				"diff",
			},
			lualine_c = {},
			lualine_x = { "filetype" },
			lualine_y = { "progress" },
			lualine_z = { "location" },
		},
		tabline = {},
	})
end
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = config,
}
