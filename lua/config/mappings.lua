local map = vim.keymap.set

map("n", ";", ":")
map("n", "<leader>q", "<cmd>qa<cr>", { desc = "Quit all" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "Clear search highlight" })

-- Explorer
map("n", "<leader>e", "<cmd>Explore<CR>", {})

-- Window movement
map("n", "<C-k>", ":wincmd k<CR>")
map("n", "<C-j>", ":wincmd j<CR>")
map("n", "<C-h>", ":wincmd h<CR>")
map("n", "<C-l>", ":wincmd l<CR>")

-- Better terminal navigation
map("t", "<C-h>", "<cmd>wincmd h<CR>")
map("t", "<C-j>", "<cmd>wincmd j<CR>")
map("t", "<C-k>", "<cmd>wincmd k<CR>")
map("t", "<C-l>", "<cmd>wincmd l<CR>")
map("t", "<Esc>", "<C-\\><C-n>")

-- Open terminal
map("n", "<leader>/", function()
  vim.cmd("botright vsplit | terminal")
end, { desc = "Open terminal right" })

-- Resize with arrows
map("n", "<C-Up>", ":resize +1<CR>")
map("n", "<C-Down>", ":resize -1<CR>")
map("n", "<C-Left>", ":vertical resize -1<CR>")
map("n", "<C-Right>", ":vertical resize +1<CR>")
