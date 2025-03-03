return {
  "williamboman/mason.nvim",
  dependencies = {
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
  },
  config = function()
    require('mason').setup {
      ui = {
        check_outdated_packages_on_open = false,
        border = 'single',
      },
    }

    require('mason-lspconfig').setup_handlers {
      function(server_name)
        require('lspconfig')[server_name].setup {
          capabilities = require('cmp_nvim_lsp').default_capabilities(),
        }
      end,
    }
  end,
}
