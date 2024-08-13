return {
  'folke/which-key.nvim',
  dependencies = { 'echasnovski/mini.nvim', version = false },
  lazy = false,
  config = function()
    local whichkey = require 'which-key'

    local mappings = {
      -- Single mappings
      {
        '<leader>e',
        '<cmd>NvimTreeToggle<CR>',
        desc = 'Explorer',
        nowait = true,
        remap = false,
      },
      {
        '<leader>w',
        '<cmd>w!<CR>',
        desc = 'Save',
        nowait = true,
        remap = false,
      },
      {
        '<leader>q',
        '<cmd>q<CR>',
        desc = 'Quit',
        nowait = true,
        remap = false,
      },
      {
        '<leader>f',
        '<cmd>Telescope live_grep theme=ivy<CR>',
        desc = 'Find Text',
        nowait = true,
        remap = false,
      },
      {
        '<leader>F',
        '<cmd>Telescope find_files theme=ivy<CR>',
        desc = 'Find Files',
        nowait = true,
        remap = false,
      },
      {
        '<leader>b',
        '<cmd>Telescope buffers theme=ivy<CR>',
        desc = 'Buffers',
        nowait = true,
        remap = false,
      },
      {
        '<leader>P',
        '<cmd>Telescope projects theme=ivy<CR>',
        desc = 'Projects',
        nowait = true,
        remap = false,
      },
      {
        '<leader>h',
        '<cmd>nohlsearch<CR>',
        desc = 'No Highlight',
        nowait = true,
        remap = false,
      },
      {
        '<leader>m',
        '<cmd>Mason<CR>',
        desc = 'Mason LSP',
        nowait = true,
        remap = false,
      },
      {
        '<leader>M',
        '<cmd>MarkdownPreviewToggle<CR>',
        desc = 'Markdown Preview',
        nowait = true,
        remap = false,
      },
      {
        '<leader>s',
        "<cmd>lua require('flash').jump()<CR>",
        desc = 'Search for word',
        nowait = true,
        remap = false,
      },
      {
        '<leader>G',
        '<cmd>Neogit<CR>',
        desc = 'Git',
        nowait = true,
        remap = false,
      },
      {
        '<leader>D',
        '<cmd>DBUIToggle<CR>',
        desc = 'DBUI',
        nowait = true,
        remap = false,
      },

      -- Group mappings

      -- Window split
      { '<leader>S', group = 'Window Split', nowait = true, remap = false },
      {
        '<leader>Sh',
        '<cmd>split<CR>',
        desc = 'Horizontal',
        nowait = true,
        remap = false,
      },
      {
        '<leader>Sv',
        '<cmd>vsplit<CR>',
        desc = 'Vertical',
        nowait = true,
        remap = false,
      },

      -- LSP Saga
      { '<leader>g', group = 'LSP Saga', nowait = true, remap = false },
      {
        '<leader>gc',
        '<cmd>Lspsaga code_action<CR>',
        desc = 'Code Action',
        nowait = true,
        remap = false,
      },
      {
        '<leader>gd',
        '<cmd>Lspsaga goto_definition<CR>',
        desc = 'Go to definition',
        nowait = true,
        remap = false,
      },
      {
        '<leader>gl',
        '<cmd>Lspsaga hover_doc<CR>',
        desc = 'Show docs',
        nowait = true,
        remap = false,
      },

      -- LSP
      { '<leader>l', group = 'LSP', nowait = true, remap = false },
      {
        '<leader>li',
        '<cmd>LspInfo<CR>',
        desc = 'Info',
        nowait = true,
        remap = false,
      },
      {
        '<leader>lr',
        '<cmd>LspRestart<CR>',
        desc = 'Restart',
        nowait = true,
        remap = false,
      },
      {
        '<leader>ls',
        '<cmd>lua vim.diagnostic.open_float()<CR>',
        desc = 'Show Diagnostics',
        nowait = true,
        remap = false,
      },

      -- Neotest
      { '<leader>n', group = 'Neotest', nowait = true, remap = false },
      {
        '<leader>no',
        '<cmd>Neotest output<CR>',
        desc = 'Neotest Output',
        nowait = true,
        remap = false,
      },
      {
        '<leader>nq',
        '<cmd>Neotest stop<CR>',
        desc = 'Neotest Stop',
        nowait = true,
        remap = false,
      },
      {
        '<leader>nr',
        '<cmd>Neotest run file<CR>',
        desc = 'Neotest Run File',
        nowait = true,
        remap = false,
      },
      {
        '<leader>ns',
        '<cmd>Neotest summary<CR>',
        desc = 'Neotest Summary',
        nowait = true,
        remap = false,
      },

      -- Lazy packages
      { '<leader>p', group = 'Lazy', nowait = true, remap = false },
      {
        '<leader>pi',
        '<cmd>Lazy install<CR>',
        desc = 'Install',
        nowait = true,
        remap = false,
      },
      {
        '<leader>pl',
        '<cmd>Lazy<CR>',
        desc = 'Open Lazy',
        nowait = true,
        remap = false,
      },
      {
        '<leader>pu',
        '<cmd>Lazy update<CR>',
        desc = 'Update',
        nowait = true,
        remap = false,
      },

      -- Search and replace
      {
        '<leader>r',
        group = 'Search and replace',
        nowait = true,
        remap = false,
      },
      {
        '<leader>rW',
        "<cmd>lua require('spectre').open_file_search({select_word=true})<CR>",
        desc = 'Select Word in current file',
        nowait = true,
        remap = false,
      },
      {
        '<leader>rf',
        "<cmd>lua require('spectre').open_file_search()<CR>",
        desc = 'Open File',
        nowait = true,
        remap = false,
      },
      {
        '<leader>rt',
        "<cmd>lua require('spectre').toggle()<CR>",
        desc = 'Toggle Spectre',
        nowait = true,
        remap = false,
      },
      {
        '<leader>rw',
        "<cmd>lua require('spectre').open_visual({select_word=true})<CR>",
        desc = 'Select Word',
        nowait = true,
        remap = false,
      },

      -- Toggling mappings
      { '<leader>t', group = 'Toggle', nowait = true, remap = false },
      {
        '<leader>ta',
        '<cmd>TSJToggle<CR>',
        desc = 'Array',
        nowait = true,
        remap = false,
      },
      {
        '<leader>te',
        '<cmd>ToggleTerm<CR>',
        desc = 'Terminal',
        nowait = true,
        remap = false,
      },

      -- Toggling mappings -> Trouble
      { '<leader>tr', group = 'Trouble', nowait = true, remap = false },
      {
        '<leader>trd',
        '<cmd>Trouble diagnostics toggle focus=true win={size={height=0.3}}<CR>',
        desc = 'Diagnostics',
        nowait = true,
        remap = false,
      },
      {
        '<leader>trs',
        '<cmd>Trouble symbols toggle focus=true win={size={width=0.3}}<CR>',
        desc = 'Symbols',
        nowait = true,
        remap = false,
      },
    }

    -- whichkey.register(mappings, opts)
    whichkey.add(mappings)
  end,
}
