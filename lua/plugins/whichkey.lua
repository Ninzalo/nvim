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
			e = { "<cmd>NvimTreeToggle<cr>", "Explorer" },
			w = { "<cmd>w!<CR>", "Save" },
			q = { "<cmd>q<CR>", "Quit" },
			f = { "<cmd>Telescope live_grep theme=ivy<cr>", "Find Text" },
			F = { "<cmd>Telescope find_files theme=ivy<cr>", "Find Files" },
			b = { "<cmd>Telescope buffers theme=ivy<cr>", "Buffers" },
			P = { "<cmd>Telescope projects theme=ivy<CR>", "Projects" },
			h = { "<cmd>nohlsearch<CR>", "No Highlight" },
			m = { "<cmd>Mason<CR>", "Mason LSP" },
			t = { "<cmd>ToggleTerm<CR>", "Terminal" },
			r = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "Ruff" },

			s = {
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
			},

			p = {
				name = "Lazy",
				l = { "<cmd>Lazy<cr>", "Open Lazy" },
				u = { "<cmd>Lazy update<cr>", "Update" },
				i = { "<cmd>Lazy install<cr>", "Install" },
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
