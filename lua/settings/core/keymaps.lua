-- leaderキー設定
vim.api.nvim_set_var('mapleader', '\\')
vim.api.nvim_set_var('maplocalleader', '_')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map('n', 'j', 'gj', opts)
map('n', 'k', 'gk', opts)
map('n', '<S-h>', '^', opts)
map('n', '<S-j>', '}', opts)
map('n', '<S-k>', '{', opts)
map('n', '<S-l>', '$', opts)
map('v', '<S-h>', '^', opts)
map('v', '<S-j>', '}', opts)
map('v', '<S-k>', '{', opts)
map('v', '<S-l>', '$', opts)
map('n', 'x', '"_x', opts)
map('n', 'X', '"_X', opts)
map('n', 's', '"_s', opts)

vim.api.nvim_set_keymap('n', 'bp', ':bp<CR>', { noremap = true, silent = true})
vim.api.nvim_set_keymap('n', 'bn', ':bn<CR>', { noremap = true, silent = true})
