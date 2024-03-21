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
                -- Ensure these servers are installed
                -- Don't forget to add them in nvim-lspconfig
                ensure_installed = { "lua_ls", "csharp_ls", "jdtls",
                    "rust_analyzer" },
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
            lspconfig.rust_analyzer.setup({         -- Rust
                capabilities = capabilities,
            })
            vim.keymap.set("n", "<A-CR>", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
        end,
    },
}
