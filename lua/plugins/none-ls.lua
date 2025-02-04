return {
	"nvimtools/none-ls.nvim",
    event = "VeryLazy",
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.black, -- for Python
				null_ls.builtins.formatting.clang_format, -- for C/C++
				null_ls.builtins.formatting.gofmt, -- for Go
				null_ls.builtins.formatting.goimports,
				-- null_ls.builtins.formatting.goimports_reviser, need to look into more
				-- null_ls.builtins.formatting.golines,
				null_ls.builtins.formatting.protolint, -- for protocol buffers
				null_ls.builtins.formatting.stylua,
			},
		})
		vim.keymap.set("n", "<C-g>", vim.lsp.buf.format, {})
	end,
}
