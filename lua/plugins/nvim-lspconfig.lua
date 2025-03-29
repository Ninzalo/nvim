local on_attach = require('util.lsp').on_attach
local tools = require 'util.tools'
local diagnostic_signs = require('util.icons').diagnostic_signs

local config = function()
  require('neoconf').setup {}
  local cmp_nvim_lsp = require 'cmp_nvim_lsp'

  local lspconfig = require 'lspconfig'

  local active_signs = {
    text = {},
    texthl = {},
    numhl = {},
  }

  for type, icon in pairs(diagnostic_signs) do
    local hl = 'DiagnosticSign' .. type
    local severity = vim.diagnostic.severity[string.upper(type)]
    if severity then
      active_signs.text[severity] = icon
      active_signs.texthl[severity] = hl
      active_signs.numhl[severity] = ''
    end
  end

  local capabilities = cmp_nvim_lsp.default_capabilities()

  local diagnostics_config = {
    virtual_text = false, -- disable virtual text
    signs = active_signs,
    update_in_insert = true,
    underline = true,
    severity_sort = true,
    float = {
      focusable = true,
      style = 'minimal',
      border = 'rounded',
      source = 'always',
      header = '',
      prefix = '',
    },
  }

  vim.diagnostic.config(diagnostics_config)

  vim.lsp.buf.hover { border = 'rounded' }

  vim.lsp.buf.signature_help { border = 'rounded' }

  for _, opts in pairs(require 'languages') do
    if opts.lsp_configs then
      for name, config in pairs(opts.lsp_configs) do
        local default_properties =
          { capabilities = capabilities, on_attach = on_attach }
        local merged_table = tools.merge_tables(config, default_properties)
        lspconfig[name].setup(merged_table)
      end
    end
  end
end

return {
  'neovim/nvim-lspconfig',
  event = { 'BufReadPre', 'BufNewFile' },
  config = config,
  lazy = false,
  dependencies = {
    'williamboman/mason.nvim',
    'hrsh7th/cmp-nvim-lsp',
    { 'antosha417/nvim-lsp-file-operations', config = true },
  },
}
