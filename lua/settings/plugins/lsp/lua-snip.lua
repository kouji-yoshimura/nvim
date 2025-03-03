return {
  'L3MON4D3/LuaSnip',
  tag = "v2.*",
  run = 'make install_jsregexp',
  dependenciese = {
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
  },
  config = function()
    require('luasnip.loaders.from_vscode').lazy_load {
      paths = {
        vim.fn.stdpath('data') .. '/site/pack/packer/start/friendly-snippets',
        "~/.config/nvim/snippets",
      }
    }
  end,
}
