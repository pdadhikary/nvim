vim.opt.guicursor = "i-ci-ve:ver25"
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
vim.cmd("match OverLength /\\%>" .. (vim.o.textwidth > 0 and vim.o.textwidth or 80) .. "v.\\+/")

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.undotree_DiffCommand = "FC"

vim.cmd("let &shell = executable('pwsh') ? 'pwsh' : 'powershell'")
vim.cmd(
	"let &shellcmdflag = '-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues[''Out-File:Encoding'']=''utf8'';Remove-Alias -Force -ErrorAction SilentlyContinue tee;'"
)
vim.cmd("let &shellredir = '2>&1 | %%{ \"$_\" } | Out-File %s; exit $LastExitCode'")
vim.cmd("let &shellpipe  = '2>&1 | %%{ \"$_\" } | tee %s; exit $LastExitCode'")
vim.cmd("set shellquote= shellxquote=")
