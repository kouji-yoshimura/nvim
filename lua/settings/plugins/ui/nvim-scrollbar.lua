return {	
  'petertriho/nvim-scrollbar',
  dependencies = {
    'kevinhwang91/nvim-hlslens',
    'lewis6991/gitsigns.nvim',
  },
  config = function()
    local colors = require("hybrid.colors").setup()
    require('scrollbar').setup {
      handle = {
        color = colors.bg_highlight,
      },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
      },
    }
    require('scrollbar.handlers.search').setup()
    require("scrollbar.handlers.gitsigns").setup()
  end
}
