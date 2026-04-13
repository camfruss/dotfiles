local opt = vim.opt

opt.number = false -- Removes line numbers

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.wildmode = "list:longest,full"
opt.backspace = { "indent", "eol", "start" }

opt.swapfile = false

opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append("c")
opt.updatetime = 300
opt.pumheight = 10

opt.history = 10000
