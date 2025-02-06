return {
	-- awesome virtual text for diagnostic messages
	{
		"https://git.sr.ht/~whynothugo/lsp_lines.nvim",
		config = function()
			require("lsp_lines").setup()
			-- disable native virtual text for lsp_lines
			vim.diagnostic.config({ virtual_text = false })
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		cmd = { "Trouble" },
		opts = {
			modes = {
				lsp = {
					win = { position = "bottom" },
				},
			},
		},
		keys = {
			{
				"<leader>tt",
				"<cmd>Trouble diagnostics toggle<cr>",
				desc = "Diagnostics (Trouble)",
			},
			{
				"[t",
				"<cmd>Trouble next<cr>",
				desc = "Next (Trouble)",
			},
			{
				"]t",
				"<cmd>Trouble previous<cr>",
				desc = "Previous (Trouble)",
			},
			{
				"<leader>tq",
				"<cmd>Trouble quickfix<cr>",
				desc = "Quickfix (Trouble)",
			},
		},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
		config = function()
			require("noice").setup({
				lsp = {
					override = {
						["vim.lsp.util.convert_input_to_markdown_lines"] = true,
						["vim.lsp.util.stylize_markdown"] = true,
						["cmp.entry.get_documentation"] = true,
					},
				},
				-- get rid of a couple of annoying NOT-warnings/errors.
				routes = {
					{ filter = { find = "E492" }, view = "mini" },
					{ filter = { find = "E37" }, view = "mini" },
					{ filter = { find = "E162" }, view = "mini" },
					{ filter = { event = "msg_show", kind = "", find = "written" }, view = "mini" },
					{ filter = { find = "E382" }, skip = true },
				},
			})
		end,
	},
}
