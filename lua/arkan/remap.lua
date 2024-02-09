vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>nt", ":Neotree<CR>")

-- move selected lines in visual mode : ThePrimeagen
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --this moves up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --this moves down

-- appends the line below to the current line, without moving the cursor : ThePrimeagen
vim.keymap.set("n", "J", "mzJ'z")
