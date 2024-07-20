local config = function()
  local configs = require 'nvim-treesitter.configs'

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

  configs.setup(treesitter_config())
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
