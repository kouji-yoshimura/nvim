return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'everforest',
        component_separators = {},
        section_separators = {},
      },
      sections = {
        lualine_b = { 'branch' },
        lualine_c = {
          "'%='",
          {
            'diff',
            symbols = {added = ' ', modified = ' ', removed = ' '},
          },
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
