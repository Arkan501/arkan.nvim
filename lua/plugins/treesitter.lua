return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local config = require("nvim-treesitter.configs")
        config.setup({
            ensure_installed = { "c_sharp", "lua", "rust", "java" },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
