local config = function()
  local lint = require 'lint'

  local linters = function()
    local linters_by_ft = {}
    for _, opts in pairs(require 'languages') do
      if opts.linters ~= nil then
        for name, formatter in pairs(opts.linters) do
          linters_by_ft[name] = formatter
        end
      end
    end
    return linters_by_ft
  end
  lint.linters_by_ft = linters()

  local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

  vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
    group = lint_augroup,
    callback = function()
      lint.try_lint()
    end,
  })
end

return {
  'mfussenegger/nvim-lint',
  lazy = true,
  event = { 'BufReadPre', 'BufNewFile' }, -- to disable, comment this out
  config = config,
}
