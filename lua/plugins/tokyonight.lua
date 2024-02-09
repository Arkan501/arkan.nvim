return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
        style = moon
    },
    config = function()
        vim.cmd.colorscheme "tokyonight"
    end
}


