return {
    'nvim-lualine/lualine.nvim',
    config = function()
        require("lualine").setup {
            options = {
                icons_enabled = true,
                theme = "nightfly"
            },
            sections = {
                lualine_c = { { require("dr-lsp").lspCount },
                    { require("dr-lsp").lspProgress } },
            },
        }
    end
}
