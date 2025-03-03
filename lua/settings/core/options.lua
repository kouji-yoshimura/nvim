local opt = vim.opt

opt.foldenable = true
opt.foldcolumn = "0"
opt.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
opt.foldlevelstart = 99

-- line numnbers
opt.number = true
opt.relativenumber = false

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- replace
opt.inccommand = "split"

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- yank to clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- other
opt.iskeyword:append("=")
opt.conceallevel = 1
opt.laststatus = 3
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.autoindent = true
opt.whichwrap = "b,s,h,l,<,>,[,]"
opt.tabstop = 4
opt.shiftwidth = 0
opt.expandtab = false

opt.list = true
local space = "·"
opt.listchars:append {
  tab = "│─",
  multispace = space,
  lead = space,
  trail = space,
  nbsp = space
}
