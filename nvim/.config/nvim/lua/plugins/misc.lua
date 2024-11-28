return {
    {
        "JoosepAlviste/nvim-ts-context-commentstring",
        lazy = true,
        opts = {
            enable_autocmd = false,
        },
    },
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        opts = {
            options = {
                custom_commentstring = function()
                    return require("ts_context_commentstring.internal").calculate_commentstring()
                        or vim.bo.commentstring
                end,
            },
        },
    },
    {
        "brenoprata10/nvim-highlight-colors",
        config = function()
            require("cmp").setup({
                formatting = {
                    format = require("nvim-highlight-colors").format,
                },
            })
        end,
    },
}
