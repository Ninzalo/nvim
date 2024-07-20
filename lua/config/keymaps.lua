local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap('n', '<leader>e', '<cmd>NvimTreeToggle<CR>', opts)

-- Pane Navigation
keymap('n', '<C-h>', '<cmd>TmuxNavigateLeft<CR>', opts)
keymap('n', '<C-j>', '<cmd>TmuxNavigateDown<CR>', opts)
keymap('n', '<C-k>', '<cmd>TmuxNavigateUp<CR>', opts)
keymap('n', '<C-l>', '<cmd>TmuxNavigateRight<CR>', opts)

-- Navigate buffers
keymap('n', '<S-l>', '<cmd>bnext<CR>', opts)
keymap('n', '<S-h>', '<cmd>bprevious<CR>', opts)
keymap('n', 'gw', '<cmd>bd<CR>', opts)

-- Insert
keymap('i', 'jk', '<ESC>', opts)
keymap('i', '<C-l>', '<Right>', opts)
keymap('i', '<C-h>', '<Left>', opts)
keymap('i', '<C-j>', '<Down>', opts)
keymap('i', '<C-k>', '<Up>', opts)
