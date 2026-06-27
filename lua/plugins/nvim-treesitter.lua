local config = function()
  local ts_module = nil
  local success, m = pcall(require, 'nvim-treesitter.configs')
  if success and m.setup then
    ts_module = m
  elseif success and m.config and m.config.setup then
    ts_module = m.config
  else
    success, m = pcall(require, 'nvim-treesitter.config')
    if success and m.setup then
      ts_module = m
    end
  end

  local treesitter_config = function()
    local tools = require 'util.tools'
    local ensure_installed = {}
    for _, opts in pairs(require 'languages') do
      if opts.treesitter_to_install then
        ensure_installed =
          tools.merge_arrays(ensure_installed, opts.treesitter_to_install)
      end
    end
    return {
      ensure_installed = ensure_installed,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end

  if ts_module then
    ts_module.setup(treesitter_config())
  end
end

return {
  'nvim-treesitter/nvim-treesitter',
  dependencies = {
    'windwp/nvim-ts-autotag',
  },
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  config = config,
}
