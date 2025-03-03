return {
  "SmiteshP/nvim-navbuddy",
  dependencies = {
    'neovim/nvim-lspconfig',
    'SmiteshP/nvim-navic',
    'MunifTanjim/nui.nvim',
    'numToStr/Comment.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    local actions = require('nvim-navbuddy.actions')
    require('nvim-navbuddy').setup {
      window = {
        size = { height = '40%', width = '100%' },
        position = { row = '96%', col = '50%' },
      },
      icons = {
        File = ' ',
        Module = ' ',
        Namespace = ' ',
        Package = ' ',
        Class = ' ',
        Method = ' ',
        Property = ' ',
        Field = ' ',
        Constructor = ' ',
        Enum = ' ',
        Interface = ' ',
        Function = ' ',
        Variable = ' ',
        Constant = ' ',
        String = ' ',
        Number = ' ',
        Boolean = ' ',
        Array = ' ',
        Object = ' ',
        Key = ' ',
        Null = ' ',
        EnumMember = ' ',
        Struct = ' ',
        Event = ' ',
        Operator = ' ',
        TypeParameter = ' ',
      },
      mappings = {
        ['t'] = actions.telescope {
          layout_config = {
            height = 0.40,
            width = 0.90,
            prompt_position = 'top',
            preview_width = 0.70,
          },
          layout_strategy = 'horizontal',
        },
      },
      lsp = {
        auto_attach = true,
      },
    }
    vim.keymap.set('n', '<leader>nb', vim.cmd.Navbuddy)
  end,
}
