return {
    {
        "catppuccin/nvim",
        name = "catppuccin",
        lazy = false,
        priority = 1000,
        opts = {
            flavour = "mocha",
            transparent_background = false,
            integrations = {
                lsp_trouble = true,
                mason = true,
                neotest = true,
                noice = true,
                which_key = true,
                cmp = true,
                gitsigns = true,
                nvimtree = true,
                treesitter = true,
                notify = true,
                mini = {
                    enabled = true,
                    indentscope_color = "",
                },
            },
            custom_highlights = function(colors)
                return {
                    PmenuThumb = { bg = colors.blue },
                    DapUIFloatBorder = { link = "FloatBorder" },
                }
            end,
        },
        config = function(plugin, opts)
            vim.opt.background = "dark"
            require(plugin.name).setup(opts)
            vim.cmd.colorscheme("catppuccin")
        end,
    },
}
