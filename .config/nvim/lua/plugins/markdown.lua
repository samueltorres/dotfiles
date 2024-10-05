return {
  {
    'MeanderingProgrammer/render-markdown.nvim',
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
    keys = {
      { '<leader>mp', '<cmd>RenderMarkdown toggle<cr>', desc = 'Toggle RenderMarkdown' },
    },
  },
}
