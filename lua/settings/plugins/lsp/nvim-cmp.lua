return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'onsails/lspkind-nvim',
    'L3MON4D3/LuaSnip',
    'zbirenbaum/copilot-cmp',
  },

  config = function()
    local cmp = require('cmp')
    local act = require('settings.plugins.lsp.extensions.nvim-cmp-actions')

    local map = cmp.mapping

    cmp.setup {
      mapping = map.preset.insert {
        ['<C-d>'] = map.scroll_docs(-4),
        ['<C-f>'] = map.scroll_docs(4),
        ['<C-Space>'] = map.complete(),
        ['<C-e>'] = map.abort(),
        ['<CR>'] = map.confirm { select = false },

        ['<Tab>'] = map(act.tab, { 'i', 's' }),
        ['<S-Tab>'] = map(act.shift_tab, { 'i', 's' }),
      },
      sources = cmp.config.sources {
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'copilot' },
        { name = 'buffer' },
        { name = 'path' },
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      formatting = {
        format = require('lspkind').cmp_format {
          mode = 'symbol',
          preset = 'codicons',
          symbol_map = { Copilot = '' },
        },
      },
    }

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources {
        { name = 'cmdline' },
        { name = 'path' },
      },
    })

    cmp.setup.cmdline({ '/', '?' }, {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources {
        {
          name = 'buffer',
          option = {
            keyword_pattern = [[\k\+]],
          },
        },
      },
    })
  end,
}
