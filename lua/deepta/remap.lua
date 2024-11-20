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
vim.keymap.set("n", "<C-j>", "20j", { desc = "Jump down" })
vim.keymap.set("n", "<C-k>", "20k", { desc = "Jump up" })

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
