require("arkan.remap")
require("arkan.set")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim",
        }
    }
}
local opts = {}

require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>gf", builtin.git_files, {})

local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "lua", "javascript", "typescript" },
    highlight = { enable = true },
    indent = { enable = true }
})


require("tokyonight").setup({
    style = "moon",
    transparent = true
})

vim.cmd.colorscheme "tokyonight"
