return {
	"stevearc/conform.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local conform = require("conform")

		conform.setup({
			formatters_by_ft = {
				javascript = { "prettierd" },
				typescript = { "prettierd" },
				javascriptreact = { "prettierd" },
				typescriptreact = { "prettierd" },
				svelte = { "prettierd" },
				css = { "prettierd" },
				html = { "prettierd" },
				json = { "prettierd" },
				yaml = { "prettierd" },
				markdown = { "prettierd" },
				lua = { "stylua" },
				python = { "isort", "black" },
				sql = { "sql-formatter" },
			},
			format_on_save = {
				async = false,
				timeout_ms = 1000,
				lsp_fallback = true,
			},
			formatters = {
				prettierd = {
					"--print-width",
					"80",
					"--tab-width",
					"4",
					"--single-quote",
					"true",
					"--jsx-single-quote",
					"true",
				},
				black = {
					"--line-length",
					"80",
				},
				stylua = {
					"--column_width",
					"80",
					"--indent_width",
					"4",
				},
				sql_formatter = {
					"--language",
					"sqlite",
				},
			},
		})
	end,
}
