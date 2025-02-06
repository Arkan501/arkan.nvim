return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "codeium" },
				}, {
					{ name = "buffer" },
				}),
                -- This is something I would like to look into more.
				-- sorting = {
				-- 	comparators = {
				-- 		cmp.config.compare.offset,
				-- 		cmp.config.compare.exact,
				-- 		cmp.config.compare.score,
				-- 		cmp.config.compare.recently_used,
				-- 		-- require("cmp-under-comparator").under,
				-- 		function(entry1, entry2)                                                -- courtesy of tj
				-- 			local _, entry1_under = entry1.completion_item.label:find("^_+")
				-- 			local _, entry2_under = entry2.completion_item.label:find("^_+")
				-- 			entry1_under = entry1_under or 0
				-- 			entry2_under = entry2_under or 0
				-- 			if entry1_under > entry2_under then
				-- 				return false
				-- 			elseif entry1_under < entry2_under then
				-- 				return true
				-- 			end
				-- 		end,
				-- 		cmp.config.compare.kind,
				-- 	},
				-- },
			})
		end,
	},
}
