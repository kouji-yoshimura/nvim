return {
  "zbirenbaum/copilot.lua",
  cmd = "Takeoff",
  event = "InsertEnter",
  config = function()
    require("copilot").setup {
      suggestion = { enabled = false },
      panel = { enabled = false },
      copilot_node_command = vim.fn.expand("$HOME") .. '/.nodenv/shims/node',
    }
    vim.api.nvim_create_user_command('Takeoff', function()
      vim.notify 'Cleared for Takeoff!'
    end, {})
  end,
}
