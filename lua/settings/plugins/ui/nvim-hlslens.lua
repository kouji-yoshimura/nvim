return {
  'kevinhwang91/nvim-hlslens',
  event = { 'FilterWritePre' },
  keys = {
    '<leader>L',
  },
  config = function()
    require('hlslens').setup()
    vim.keymap.set({'n', 'x'}, '<leader>L', function()
      vim.schedule(function()
        if require('hlslens').exportLastSearchToQuickfix() then
          vim.cmd('cw')
        end
      end)
      return ':noh<CR>'
    end, {expr = true})
  end,
}
