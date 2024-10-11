return {
    -- main dap thingy
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            vim.keymap.set("n", "<F2>", dap.step_into, { noremap = true })
            vim.keymap.set("n", "<F3>", dap.step_over, { noremap = true })
            vim.keymap.set("n", "<F5>", dap.continue, { noremap = true })
            vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { noremap = true })
        end,
    },
    -- {
    --     "jay-babu/mason-nvim-dap.nvim",
    --     config = function()
    --         require("mason-nvim-dap").setup({
    --             ensure_installed = { "delve" },
    --         })
    --     end,

    -- },
    -- dap-ui
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require("dapui").setup()

            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },
    -- virtual text
    {
        "theHamsta/nvim-dap-virtual-text",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("nvim-dap-virtual-text").setup({
                commented = true,
                virt_text_pos = "eol",
            })
        end,
    },
    -- dap for go
    {
        "leoluz/nvim-dap-go",
        dependencies = {
            "mfussenegger/nvim-dap",
        },
        config = function()
            require("dap-go").setup()
        end,
    },
}
