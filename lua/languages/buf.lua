local M = {}

M.linters = {
  proto = { 'buf' },
}
M.formatters = {
  proto = { 'buf' },
}
M.treesitter_to_install = { 'proto' }

return M
