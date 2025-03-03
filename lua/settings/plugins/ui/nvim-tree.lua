return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    vim.api.nvim_set_var('loaded_netrw', 1)
    vim.api.nvim_set_var('loaded_netrwPlugin', 1)
    vim.api.nvim_create_user_command('Ex', function() vim.cmd.NvimTreeToggle() end, {})

    require("nvim-tree").setup {
      renderer = {
        highlight_git = true,
        highlight_opened_files = 'name',
        icons = {
          glyphs = {
            git = {
              unstaged = '!',
              renamed = '»',
              untracked = '?',
              deleted = '✘',
              staged = '✓',
              unmerged = '',
              ignored = '◌',
            },
          },
        },
      },
      actions = {
        expand_all = {
          max_folder_discovery = 100,
          exclude = { '.git', 'target', 'build' },
        },
        open_file = {
          window_picker = {
            enable = false,
          },
        }
      },
      on_attach = require('settings.plugins.ui.extensions.nvim-tree-actions').on_attach,
    }

    vim.cmd.NvimTreeOpen()
  end,
}
