vim.g.mapleader = " "

-- Clipboard
vim.keymap.set("n", "<C-a>", "gg0vG$", { desc = "Select all" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy selection to clipboard" })
vim.keymap.set("n", "<leader>y", 'V"+y$', { desc = "Copy line to clipboard" })
vim.keymap.set("n", "<leader>p", '"+p', { desc = "Paste from clipboard" })

-- Explorer
vim.keymap.set("n", "<leader>fv", function()
	vim.cmd([[Neotree toggle]])
end, { desc = "Neotree file explorer" })
vim.keymap.set("n", "<C-t>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Navigation
vim.keymap.set({ "n", "v" }, "<C-j>", "20j", { desc = "Jump down" })
vim.keymap.set({ "n", "v" }, "<C-k>", "20k", { desc = "Jump up" })

-- Editor
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selection up" })
vim.keymap.set("n", "<C-d>", "mz0Vyp`z", { desc = "Duplicate line" })
vim.keymap.set("n", "<C-s>", function()
	local _, _ = pcall(function()
		vim.cmd([[silent! %s/\r\n/\r/g]])
	end)
	require("conform").format({
		lsp_fallback = true,
		async = false,
		timeout_ms = 1000,
	})
	vim.cmd("write")
end, { noremap = true, silent = true, desc = "Save files; change line endings" })
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines" })
vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end, { desc = "Source current file" })
vim.keymap.set("n", "Q", "<nop>", { desc = "Disable replay macro" })

-- Terminal
vim.keymap.set("n", "<leader>t", function()
	local count = vim.v.count1 -- Use vim.v.count1 instead of vim.v.count
	require("toggleterm").toggle(count)
end)
function _G.set_terminal_keymaps()
	local opts = { buffer = 0 }
	vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], opts)
	vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
	vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
	vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
	vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
	vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd("autocmd! TermOpen term://*toggleterm#* lua set_terminal_keymaps()")
