return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	opts = {
		styles = {
			sidebars = "dark",
			floats = "normal",
		},
		dim_inactive = false,
		transparent = true,
		terminal_colors = true,
	},
	config = function()
		vim.cmd([[colorscheme tokyonight]])
	end,
}
