return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			shade_terminals = true,
			direction = "horizontal",
			float_opts = {
				border = "curved",
				winblend = 0,
				width = 90,
				height = 23,
			},
		})
		local Terminal = require("toggleterm.terminal").Terminal
		-- Floating terminal
		local float_term = Terminal:new({
			direction = "float",
			hidden = true,
		})
		function _FLOAT_TERM()
			float_term:toggle()
		end

		-- Horizontal terminal
		local horizontal_term = Terminal:new({
			direction = "horizontal",
			size = 15,
			hidden = true,
		})
		function _HORIZONTAL_TERM()
			horizontal_term:toggle()
		end

		local opts = { noremap = true, silent = true }
		vim.keymap.set({ "n", "t" }, "<A-f>", "<cmd>lua _FLOAT_TERM()<CR>", opts)
		vim.keymap.set({ "n", "t" }, "<A-h>", "<cmd>lua _HORIZONTAL_TERM()<CR>", opts)
	end,
}
