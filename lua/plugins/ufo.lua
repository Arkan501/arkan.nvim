return {
    'kevinhwang91/nvim-ufo',
    dependencies = "kevinhwang91/promise-async",
    config = function()
        vim.o.foldcolumn = '1'
        vim.o.foldlevel = 99
        vim.o.foldlevelstart = 99
        vim.o.foldenable = true

        vim.keymap.set("n", "zR", require("ufo").openAllFolds, {})
        vim.keymap.set("n", "zM", require("ufo").closeAllFolds, {})
        vim.keymap.set("n", "zK", function()
            local winid = require("ufo").peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end, {})

        require("ufo").setup {
            provider_selector = function(bufnr, filetype, buftype)
                return { "treesitter", "indent" }
            end
        }
    end
}
