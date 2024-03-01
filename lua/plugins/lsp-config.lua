return {
    -- mason plugin
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    -- mason-lspcongif plugin
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "csharp_ls", "jdtls" },
            })
        end,
    },
    -- lspconfig plugin
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({                -- Lua
                capabilities = capabilities,
            })
            lspconfig.csharp_ls.setup({             -- C#
                capabilities = capabilities,
            })
            lspconfig.jdtls.setup({                 -- Java
                capabilities = capabilities,
            })
            vim.keymap.set("n", "<A-CR>", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
