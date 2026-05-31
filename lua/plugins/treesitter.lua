return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "go", "c" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "go", "c" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
