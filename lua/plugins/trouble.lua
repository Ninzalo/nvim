return {
  'folke/trouble.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  cmd = { 'Trouble' },
  opts = {
    keys = {
      o = 'fold_toggle',
      za = 'fold_toggle',
      m = {
        action = function(view)
          view:filter({ buf = 0 }, { toggle = true })
        end,
        desc = 'Toggle Current Buffer Filter',
      },
    },
  },
}
