local M = {}

M.lsp_configs = {
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
  tsserver = {
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
}

M.linters = {
  javascript = { 'eslint_d' },
  typescript = { 'eslint_d' },
  javascriptreact = { 'eslint_d' },
  typescriptreact = { 'eslint_d' },
  svelte = { 'eslint_d' },
  html = { 'htmlhint' },
}

M.treesitter_to_install =
  { 'html', 'css', 'javascript', 'typescript', 'vue', 'svelte' }

return M
