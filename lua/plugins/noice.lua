return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
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
			routes = {
				{ filter = { find = "E492" }, view = "mini" },
				{ filter = { find = "E37" }, view = "mini" },
				{ filter = { find = "E162" }, view = "mini" },
				{ filter = { event = "msg_show", kind = "", find = "written" }, view = "mini" },
				{ filter = { find = "E382" }, skip = true },
			},
		})
	end,
}
