-- return {
-- 	"nvim-telescope/telescope.nvim",
-- 	tag = "v0.2.0",
-- 	dependencies = { "nvim-lua/plenary.nvim" },
-- 	config = function()
-- 		local builtin = require("telescope.builtin")
--
-- 		vim.keymap.set("n", "<leader>fw", builtin.live_grep)
-- 		vim.keymap.set("n", "<leader>ff", builtin.find_files)
-- 		vim.keymap.set("n", "<leader>fh", ":Telescope find_files hidden=true <CR>")
-- 	end,
-- }
--
return {
	"nvim-telescope/telescope.nvim",
	branch = "master",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>fw", "<cmd>Telescope live_grep<cr>", desc = "Live grep" },
		{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files" },
		{ "<leader>fh", "<cmd>Telescope find_files hidden=true<cr>", desc = "Find hidden files" },
		{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
		{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
		{ "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "Diagnostics" },
		{ "<leader>fc", "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
	},
	opts = {},
}
