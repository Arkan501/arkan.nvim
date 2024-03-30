-- set neo-tree background transparent
vim.api.nvim_create_augroup("Neo-tree_bg", { clear = true })
vim.api.nvim_create_autocmd("ColorScheme", {
	group = "Neo-tree_bg",
	pattern = "*",
	callback = function()
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "NONE" })
	end,
})
