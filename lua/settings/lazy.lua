local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WorningMsg" },
      { "" },
      { "Press any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { import = "settings.plugins" },
  { import = "settings.plugins.colorscheme.vim-hybrid" },
  { import = "settings.plugins.colorscheme.everforest" },
  { import = "settings.plugins.git.copilot-chat" },
  { import = "settings.plugins.git.copilot-cmp" },
  { import = "settings.plugins.git.copilot" },
  { import = "settings.plugins.git.gitsigns" },
  { import = "settings.plugins.git.lazygit" },
  { import = "settings.plugins.lsp.copilot-cmp" },
  { import = "settings.plugins.lsp.friendly-snippets" },
  { import = "settings.plugins.lsp.lua-snip" },
  { import = "settings.plugins.lsp.mason" },
  { import = "settings.plugins.lsp.nvim-cmp" },
  { import = "settings.plugins.lsp.nvim-lspconfig" },
  { import = "settings.plugins.lsp.nvim-navbuddy" },
  { import = "settings.plugins.lsp.nvim-navic" },
  { import = "settings.plugins.ui.lualine" },
  { import = "settings.plugins.ui.nvim-hlslens" },
  { import = "settings.plugins.ui.nvim-scrollbar" },
  { import = "settings.plugins.ui.nvim-tree" },
  { import = "settings.plugins.ui.telescope" },
  -- { import = "settings.plugins.ui.which-key" },
  { import = "settings.plugins.viewer.markdown-preview" },
  { import = "settings.plugins.viewer.nvim-treesitter" },
})
