vim.opt.guicursor = {
	"n-v-c:block-blinkwait700-blinkon400-blinkoff250", -- Normal/Visual/Command: blinking block
	"i-ci-ve:ver25", -- Insert/Command-line Insert/Visual-ex: steady vertical bar
	"r-cr:hor20", -- Replace modes: steady horizontal bar
	"o:hor50", -- Operator-pending: steady horizontal bar
}
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = "C:/Users/deept/AppData/Local/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80," .. (vim.o.textwidth > 0 and vim.o.textwidth or 80)
vim.cmd("highlight OverLength ctermbg=red ctermfg=white guibg=#592929")
vim.cmd(
	"match OverLength /\\%>"
		.. (vim.o.textwidth > 0 and vim.o.textwidth or 80)
		.. "v.\\+/"
)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.undotree_DiffCommand = "FC"
