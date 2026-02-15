vim.opt.number = true
vim.opt.swapfile = false
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "

-- Terminal
vim.keymap.set('n', '<c-b>', ':ToggleTerm<CR>')
vim.keymap.set('t', '<c-b>', "<C-\\><C-n><C-w>h")

-- Window movement
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')
