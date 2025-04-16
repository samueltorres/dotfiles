return {
  -- Adds git related signs to the gutter, as well as utilities for managing changes
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
  },
  {
    'sindrets/diffview.nvim',
    opts = {},
    keys = {
      {
        '<leader>gdd',
        ':DiffviewOpen<CR>',
        desc = 'Open Diffview',
      },
      {
        '<leader>gdc',
        ':DiffviewClose<CR>',
        desc = 'Close Diffview',
      },
    },
  },
}
