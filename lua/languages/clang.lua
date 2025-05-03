local M = {}

M.treesitter_to_install = { 'c', 'cpp' }
M.lsp_configs = {
  clangd = {
    filetypes = { 'c', 'cpp' },
  },
}

M.formatters = {
  c = { 'clang-format' },
  cpp = { 'clang-format' },
}
M.linters = {
  c = { 'cpplint' },
  cpp = { 'cpplint' },
}

return M
