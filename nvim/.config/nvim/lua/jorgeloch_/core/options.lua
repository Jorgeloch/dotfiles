local opt = vim.opt

-- line numbers
opt.relativenumber = true
opt.number = true

-- tab & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- no line wrapping
opt.wrap = false

-- backup files
opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
opt.undofile = true

-- search settings
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- cursor line
opt.cursorline = true

-- appearence
opt.termguicolors = true
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

-- clipboard
opt.clipboard:append("unnamedplus") -- makes nvim use system's clipboard

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")
opt.guicursor = ""
opt.signcolumn = "yes"
opt.scrolloff = 8

opt.colorcolumn = "80"
opt.updatetime = 50
