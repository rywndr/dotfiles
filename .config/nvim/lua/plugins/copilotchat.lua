return {
    {
        "CopilotC-Nvim/CopilotChat.nvim",
        opts = {},
        build = function()
            vim.cmd("UpdateRemotePlugins") -- You need to restart to make it works
        end,
        event = "VeryLazy",
        keys = {
            { "<leader>cce", "<cmd>CopilotChatExplain<cr>", desc = "CopilotChat - Explain code" },
            { "<leader>cct", "<cmd>CopilotChatTests<cr>",   desc = "CopilotChat - Generate tests" },
        },
    },
}

