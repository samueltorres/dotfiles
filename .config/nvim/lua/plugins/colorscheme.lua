return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    priority = 1000,
    opts = {
      dim_inactive_windows = true,
    },
    config = function(opts)
      require('rose-pine').setup(opts)
      vim.cmd.colorscheme('rose-pine')
    end,
  },
  --   {
  --     'catppuccin/nvim',
  --     name = 'catppuccin',
  --     priority = 1000,
  --     opts = {
  --       integrations = {
  --         cmp = true,
  --         fidget = true,
  --         gitsigns = true,
  --         nvimtree = true,
  --         harpoon = true,
  --         treesitter = true,
  --         notify = true,
  --         neotree = true,
  --         which_key = true,
  --         telescope = {
  --           enabled = true,
  --         },
  --         mini = {
  --           enabled = true,
  --           indentscope_color = '',
  --         },
  --       },
  --     },
  --     config = function(opts)
  --       require('catppuccin').setup(opts)
  --       vim.cmd.colorscheme('catppuccin-mocha')
  --     end,
  --   },
}
