local o = vim.opt

o.termguicolors = true
o.number = true
o.relativenumber = true
o.signcolumn = "yes"
o.cursorline = true
o.scrolloff = 8
o.sidescrolloff = 8
o.wrap = false
o.colorcolumn = "100"
o.cmdheight = 1
o.showmode = true
o.pumheight = 12
o.splitright = true
o.splitbelow = true

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = false
o.autoindent = true
o.smartindent = true

o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

o.undofile = true
o.swapfile = false
o.backup = false
o.updatetime = 200
o.timeoutlen = 300

o.completeopt = { "menu", "menuone", "noselect" }
o.shortmess:append("c")

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
o.foldenable = false
o.foldlevel = 99

o.mouse = "a"
o.clipboard = "unnamedplus"
o.laststatus = 3
o.list = true
o.listchars = { tab = "  ", trail = ".", nbsp = "_" }

vim.g.mapleader = " "

-- diagnostics
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})
