return {
  'SmiteshP/nvim-navic',
  dependencies = {
    'neovim/nvim-lspconfig',
  },
  config = function()
    require('nvim-navic').setup {
      lsp = {
        auto_attach = true,
      },
      highlight = true,
      depth_limit = 9,
    }
    vim.api.nvim_create_autocmd("BufEnter", {
      group = vim.api.nvim_create_augroup('nvim-navic', {}),
      callback = function()
        if vim.api.nvim_buf_line_count(0) > 10000 then
          vim.b.navic_lazy_update_context = true
        end
      end,
    })
  end
}
