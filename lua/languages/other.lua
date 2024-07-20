return {
  yaml = {
    treesitter_to_install = { 'yaml' },
    formatters = {
      yaml = { 'prettierd' },
    },
  },

  toml = {
    treesitter_to_install = { 'toml' },
    lsp_configs = {
      harper_ls = {
        filetypes = { 'toml', 'markdown' },
      },
    },
    formatters = {
      toml = { 'prettierd' },
    },
  },

  json = {
    treesitter_to_install = { 'json' },
    formatters = {
      json = { 'prettierd' },
    },
  },

  sql = {
    treesitter_to_install = { 'sql' },
    formatters = { sql = { 'sqlfmt' } },
  },

  vimdoc = {
    treesitter_to_install = { 'vimdoc' },
  },

  dockerfile = {
    treesitter_to_install = { 'dockerfile' },
  },

  gitignore = {
    treesitter_to_install = { 'gitignore' },
  },

  markdown = {
    lsp_configs = {
      harper_ls = {
        filetypes = { 'toml', 'markdown' },
      },
    },
    treesitter_to_install = { 'markdown' },
  },

  markdown_inline = {
    treesitter_to_install = { 'markdown_inline' },
  },

  bash = {
    treesitter_to_install = { 'bash' },
  },

  ltex = {
    lsp_configs = {
      ltex = {
        filetypes = {
          'bib',
          'gitcommit',
          'org',
          'plaintex',
          'rst',
          'rnoweb',
          'tex',
          'pandoc',
          'quarto',
          'rmd',
          'context',
          'mail',
          'text',
        },
        settings = {
          ltex = {
            enabled = true,
          },
        },
      },
    },
  },
  regex = {
    treesitter_to_install = { 'regex' },
  },
}
