local M = {}

M.treesitter_to_install = { 'python' }
M.lsp_configs = {
  pyright = {
    autostart = true,
    filetypes = { 'python' },
    settings = {
      pyright = {
        disableOrganizeImports = true,
      },
      python = {
        analysis = {
          typeCheckingMode = 'off',
          ignore = { '*' },
        },
      },
    },
  },
  ruff = {
    autostart = true,
    filetypes = { 'python' },
    init_options = {
      settings = {
        fixAll = true,
        configuration = '~/.config/nvim/.ruff.toml',
      },
    },
  },
}

M.on_attach = {
  ruff = {
    server_capabilities = {
      hoverProvider = false,
    },
  },
}

return M
