return {
    {
        "stevearc/oil.nvim",
        keys = {
            { "<leader>-", "<CMD>Oil --float<CR>", desc = "Oil" },
        },
        opts = {
            view_options = {
                show_hidden = false,
                is_hidden_file = function(name, bufnr)
                    return vim.startswith(name, ".")
                end,
                is_always_hidden = function(name, bufnr)
                    return false
                end,
                sort = {
                    { "type", "asc" },
                    { "name", "asc" },
                },
            },
            float = {
                padding = 1,
                max_width = 60,
                max_height = 16,
                border = "rounded",
                win_options = {
                    winblend = 0,
                },
                override = function(conf)
                    return conf
                end,
            },
        },
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
}
