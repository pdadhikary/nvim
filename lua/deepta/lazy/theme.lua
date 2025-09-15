return {
	"sainnhe/gruvbox-material",
	lazy = false,
	priority = 1000,
	config = function()
		-- Optionally configure and load the colorscheme
		-- directly inside the plugin declaration.
		if vim.fn.has("terminalguicolors") == 1 then
			vim.opt.termguicolors = true
		end

		vim.opt.background = "dark"

		vim.g.gruvbox_material_background = "medium"
		vim.g.gruvbox_material_better_performance = 1
		vim.g.gruvbox_material_enable_italic = true
		vim.cmd.colorscheme("gruvbox-material")
	end,
}
