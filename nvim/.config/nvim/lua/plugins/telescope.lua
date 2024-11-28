return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local builtin = require("telescope.builtin")
        vim.keymap.set("n", "<leader>sf", builtin.find_files, {})
        vim.keymap.set("n", "<C-f>", builtin.git_files, {})
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>sb", builtin.buffers, {})
    end,
}
