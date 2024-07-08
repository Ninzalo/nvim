return {
	"folke/which-key.nvim",
	lazy = false,
	config = function()
		local whichkey = require("which-key")

		local opts = {
			mode = "n", -- NORMAL mode
			prefix = "<leader>",
			buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
			silent = true, -- use `silent` when creating keymaps
			noremap = true, -- use `noremap` when creating keymaps
			nowait = true, -- use `nowait` when creating keymaps
		}

		local mappings = {
			e = { "<cmd>NvimTreeToggle<CR>", "Explorer" },
			w = { "<cmd>w!<CR>", "Save" },
			q = { "<cmd>q<CR>", "Quit" },
			f = { "<cmd>Telescope live_grep theme=ivy<CR>", "Find Text" },
			F = { "<cmd>Telescope find_files theme=ivy<CR>", "Find Files" },
			b = { "<cmd>Telescope buffers theme=ivy<CR>", "Buffers" },
			P = { "<cmd>Telescope projects theme=ivy<CR>", "Projects" },
			h = { "<cmd>nohlsearch<CR>", "No Highlight" },
			m = { "<cmd>Mason<CR>", "Mason LSP" },
			s = { "<cmd>lua require('flash').jump()<CR>", "Search for word" },
			M = { "<cmd>MarkdownPreviewToggle<CR>", "Markdown Preview" },
			G = { "<cmd>Neogit<CR>", "Neogit" },
			D = { "<cmd>DBUIToggle<CR>", "DBUI" },

			t = {
				name = "Toggle",
				e = { "<cmd>ToggleTerm<CR>", "Terminal" },
				a = { "<cmd>TSJToggle<CR>", "Array" },
				r = {
					name = "Trouble",
					d = {
						"<cmd>Trouble diagnostics toggle focus=true win={size={height=0.3}}<CR>",
						"Diagnostics",
					},
					s = {
						"<cmd>Trouble symbols toggle focus=true win={size={width=0.3}}<CR>",
						"Symbols",
					},
				},
			},

			r = {
				name = "Search and replace",
				t = { "<cmd>lua require('spectre').toggle()<CR>", "Toggle Spectre" },
				f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Open File" },
				w = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Select Word" },
				W = {
					"<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
					"Select Word in current file",
				},
			},

			S = {
				name = "Window Split",
				v = { "<cmd>vsplit<CR>", "Vertical" },
				h = { "<cmd>split<CR>", "Horizontal" },
			},

			l = {
				name = "LSP",
				i = { "<cmd>LspInfo<CR>", "Info" },
				r = { "<cmd>LspRestart<CR>", "Restart" },
				s = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Show Diagnostics" },
			},

			g = {
				name = "LSP Saga",
				d = { "<cmd>Lspsaga goto_definition<CR>", "Go to definition" },
				l = { "<cmd>Lspsaga hover_doc<CR>", "Show docs" },
				c = { "<cmd>Lspsaga code_action<CR>", "Code Action" },
			},

			p = {
				name = "Lazy",
				l = { "<cmd>Lazy<CR>", "Open Lazy" },
				u = { "<cmd>Lazy update<CR>", "Update" },
				i = { "<cmd>Lazy install<CR>", "Install" },
			},

			n = {
				name = "Neotest",
				s = { "<cmd>Neotest summary<CR>", "Neotest Summary" },
				r = { "<cmd>Neotest run file<CR>", "Neotest Run File" },
				q = { "<cmd>Neotest stop<CR>", "Neotest Stop" },
				o = { "<cmd>Neotest output<CR>", "Neotest Output" },
			},
		}

		whichkey.register(mappings, opts)
	end,
}
