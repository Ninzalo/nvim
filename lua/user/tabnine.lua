-- конфиг для ИИ автодополнений
-- require('').setup({
--   -- disable_auto_comment=true,
--   -- accept_keymap="<Tab>",
--   -- dismiss_keymap = "<C-]>",
--   -- debounce_ms = 800,
--   -- suggestion_color = {gui = "#808080", cterm = 244},
--   -- exclude_filetypes = {"TelescopePrompt"},
--   max_lines = 1000,
--   max_num_results = 20,
--   sort = true,
--   run_on_every_keystroke = true,
--   snippet_placeholder = '..',
-- })
local tabnine = require('cmp_tabnine.config')
tabnine:setup({
  max_lines = 1000,
  max_num_results = 20,
  sort = true,
  run_on_every_keystroke = true,
  snippet_placeholder = '..',
})
