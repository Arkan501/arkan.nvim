return {
    -- mason plugin
    -- Used to install the language servers
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
                -- ensure these servers are installed
                ensure_installed = {
                    -- "csharp_ls",
                    "gopls",
                    "lua_ls",
                    "pylsp",
                    "rust_analyzer",
                },
            })
        end,
    },
    -- lspconfig plugin
    -- used to set up the language servers
    -- REMINDER: Don't forget to update treesitter
    {
        "neovim/nvim-lspconfig",
        config = function()
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local lspconfig = require("lspconfig")

            -- lspconfig.csharp_ls.setup({ -- C#
            -- 	capabilities = capabilities,
            -- })
            lspconfig.gopls.setup({ -- Go
                cmd = { "gopls" },
                capabilities = capabilities,
                root_dir = lspconfig.util.root_pattern("go.mod", ".git"),
            })
            lspconfig.lua_ls.setup({ -- Lua
                capabilities = capabilities,
            })
            lspconfig.pylsp.setup({ -- Python
                capabilities = capabilities,
            })
            lspconfig.rust_analyzer.setup({ -- Rust
                capabilities = capabilities,
            })
            vim.keymap.set("n", "<A-CR>", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
        end,
    },
    {
        "chrisgrieser/nvim-dr-lsp"
    },
}
