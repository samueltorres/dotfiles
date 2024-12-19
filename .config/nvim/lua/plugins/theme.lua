return {
  -- [[ Theme ]] --
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {
      style = 'storm',
      dim_inactive = true,
    },
    init = function()
      vim.cmd.colorscheme('tokyonight-moon')
    end,
  },
}
