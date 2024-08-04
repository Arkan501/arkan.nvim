return {
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
}
