local M = {}

M.lsp_configs = {
  jsonls = {
    filetypes = { 'json', 'jsonc' },
  },
  emmet_ls = {
    filetypes = {
      'html',
      'typescriptreact',
      'javascriptreact',
      'css',
      'sass',
      'scss',
      'less',
      'svelte',
    },
  },
  ts_ls = {
    filetypes = {
      'javascript',
      'javascriptreact',
      'javascript.jsx',
      'typescript',
      'typescriptreact',
      'typescript.tsx',
    },
  },
  cssls = {
    filetypes = { 'css', 'scss', 'sass', 'less' },
  },
}

M.formatters = {
  javascript = { 'prettierd' },
  typescript = { 'prettierd' },
  javascriptreact = { 'prettierd' },
  typescriptreact = { 'prettierd' },
  svelte = { 'prettierd' },
  html = { 'prettierd' },
  json = { 'prettierd' },
}

M.linters = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  svelte = { 'eslint_d' },
  html = { 'htmlhint' },
  json = { 'eslint' },
}

M.treesitter_to_install =
  { 'html', 'css', 'javascript', 'typescript', 'vue', 'svelte', 'json' }

return M
