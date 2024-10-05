return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
      dim_inactive = {
        enabled = true,
        shade = 'dark',
        percentage = 0.5,
      },
      integrations = {
        cmp = true,
        fidget = true,
        gitsigns = true,
        nvimtree = true,
        harpoon = true,
        treesitter = true,
        notify = true,
        neotree = true,
        which_key = true,
        telescope = {
          enabled = true,
        },
        mini = {
          enabled = true,
          indentscope_color = '',
        },
      },
    },
    config = function(opts)
      require('catppuccin').setup(opts)
      vim.cmd.colorscheme('catppuccin-macchiato')
    end,
  },
}
