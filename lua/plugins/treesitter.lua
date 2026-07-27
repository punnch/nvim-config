return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({ "lua", "go", "c", "rust" })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = { "lua", "go", "c", "rs" },
			callback = function()
				vim.treesitter.start()
			end,
		})
	end,
}
