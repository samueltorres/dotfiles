return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    opts = {
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
    config = function()
      require('catppuccin').setup({})
      vim.cmd.colorscheme('catppuccin-mocha')
    end,
  },
}
