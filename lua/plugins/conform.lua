return {
	"stevearc/conform.nvim",
	lazy = true,
	event = "BufWritePre",
	opts = {
		formatters_by_ft = {
			-- lua = { "stylua" },
			go = { "goimports" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true, -- fall back to LSP if no formatter found
		},
	},
}
