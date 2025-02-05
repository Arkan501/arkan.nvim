return {
	{
		"stevearc/oil.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				default_file_explorer = true,
				columns = {
					"icon",
					-- "permissions",
					-- "size",
					-- "mtime",
				},
				lsp_file_methods = {
					enabled = true,
				},
				keymaps = {
					["<C-h>"] = false,
				},
			})
		end,
	},
	{
		"JezerM/oil-lsp-diagnostics.nvim",
		dependencies = { "stevearc/oil.nvim" },
		config = function()
			require("oil-lsp-diagnostics").setup()
		end,
	},
}
