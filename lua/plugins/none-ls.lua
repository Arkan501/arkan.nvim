return {
    "nvimtools/none-ls.nvim",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.black,      -- for Python
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.gofmt,      -- for Go
                null_ls.builtins.formatting.goimports,
                null_ls.builtins.diagnostics.delve,
            },
        })
        vim.keymap.set("n", "<C-g>", vim.lsp.buf.format, {})
    end,
}
