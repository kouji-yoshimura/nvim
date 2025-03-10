return {
  'sainnhe/everforest',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme('everforest')
    vim.g.everforest_background = 'hard'

    vim.cmd("highlight CursorLineNr ctermbg=NONE guibg=NONE")
    vim.cmd("highlight EndOfBuffer ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NonText ctermbg=NONE guibg=NONE")
    vim.cmd("highlight Normal ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NormalNC ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NvimTreeCursorLine ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NvimTreeEndOfBuffer ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NvimTreeNormal ctermbg=NONE guibg=NONE")
    vim.cmd("highlight NvimTreeNormalNC ctermbg=NONE guibg=NONE")
    vim.cmd("highlight SpecialKey ctermbg=NONE guibg=NONE")
  end
}
