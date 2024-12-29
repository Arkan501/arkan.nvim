vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- vim.keymap.set("n", "<leader>pv", ":Neotree position=current<CR>") -- open neotree in the current file's directory
-- vim.keymap.set("n", "<leader>nt", ":Neotree<CR>")
vim.keymap.set("n", "<leader>pv", ":Oil<CR>") -- mainly for when working in a file.

-- move selected lines in visual mode :so ThePrimeagen
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") --this moves up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") --this moves down

-- appends the line below to the current line, without moving the cursor :so ThePrimeagen
vim.keymap.set("n", "J", "mzJ'z")
