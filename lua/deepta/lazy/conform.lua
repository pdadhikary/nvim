return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "biome-check" },
				typescript = { "biome-check" },
				javascriptreact = { "biome-check" },
				typescriptreact = { "biome-check" },
				svelte = { "prettier" },
				css = { "biome-check" },
				html = { "biome-check" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				csharp = { "csharpier" },
				cpp = { "clang-format" },
			},
			format_on_save = {
				async = false,
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters = {
				prettier = {
					args = {
						"--stdin-filepath",
						"$FILENAME",
						"--tab-width",
						"4",
						"--use-tabs",
						"false",
					},
				},
				isort = {
					args = {
						"--profile",
						"black",
						"-",
					},
				},
				black = {
					prepend_args = {
						"--line-length",
						"80",
					},
				},
				stylua = {
					prepend_args = {
						"--column-width",
						"80",
						"--indent-width",
						"4",
					},
				},
			},
		})
	end,
}
