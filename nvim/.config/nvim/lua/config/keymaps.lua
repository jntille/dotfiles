-- Keymaps for better default experience
-- vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- set space as <leader> key
vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- open netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- center screen in the middle after page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- exit insert mode
vim.keymap.set("i", "<C-c>", "<Esc>", {silent = true })
