return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			transparent = false,
			terminal_colors = true,
			styles = {
				sidebars = "dark",
				floats = "dark",
			},
		})

		vim.cmd([[colorscheme tokyonight]])
	end,
}
