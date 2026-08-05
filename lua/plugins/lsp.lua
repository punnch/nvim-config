return {
	{
		"mason-org/mason.nvim",
		opts = {
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "gopls", "clangd", "rust_analyzer" },
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							-- Tells the LSP to ignore undefined global warnings for these variables
							globals = { "vim", "Snacks" },
						},
						workspace = {
							-- Makes the LSP aware of Neovim runtime files and APIs
							library = vim.api.nvim_get_runtime_file("", true),
							checkThirdParty = false,
						},
						telemetry = {
							enable = false,
						},
					},
				},
			})

			-- lsp
			vim.lsp.config("lua_ls", {})
			vim.lsp.config("gopls", {})
			vim.lsp.config("clangd", {})
			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						completion = {
							autoimport = { enable = true },
						},
						check = {
							command = "clippy",
						},
					},
				},
			})

			-- keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover)
			vim.keymap.set("n", "gd", vim.lsp.buf.definition)
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
		end,
	},

	{
		"stevearc/conform.nvim",
		lazy = true,
		event = "BufWritePre",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "gofumpt" },
				rust = { "rustfmt" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_fallback = true, -- fall back to LSP if no formatter found
			},
		},
	},
}
