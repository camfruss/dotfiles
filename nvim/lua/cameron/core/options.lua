local opt = vim.opt

opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.smartindent = true

opt.wrap = false
opt.nu = true

opt.ignorecase = true
opt.smartcase = true

opt.wildmode = "list:longest,full"
opt.backspace = { "indent", "eol", "start" }

opt.swapfile = false

opt.completeopt = { "menu", "menuone", "noselect" }
opt.shortmess:append("c")
opt.updatetime = 300
opt.pumheight = 10
