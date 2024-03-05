return {
    {
        "tpope/vim-fugitive",
        config = function()
            vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
            vim.keymap.set("n", "<leader>gc", function() vim.cmd.Git("commit") end)
            vim.keymap.set("n", "<leader>gv", vim.cmd.Gvdiffsplit)
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require("gitsigns").setup()
        end,
    }
}
