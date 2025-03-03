return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'base16',
      },
      sections = {
        lualine_c = {
          {
            'diagnostics',
            sources = { 'nvim_diagnostic', 'nvim_lsp' },
            sections = { 'error', 'warn', 'info', 'hint' },
            symbols = { error = ' ', warn = ' ', info = ' ', hint = '' },
          },
        },
      },
      tabline = {
        lualine_a = {
          { 'filename' },
        },
        lualine_c = {
          { 'navic' },
        },
      },
    }
  end
}
