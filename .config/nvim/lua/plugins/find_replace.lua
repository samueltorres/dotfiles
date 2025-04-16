return {
  {
    'MagicDuck/grug-far.nvim',
    keys = {
      {
        '<leader>rp',
        function()
          require('grug-far').open()
        end,
        desc = 'Search/Replace in project',
      },
      {
        '<leader>rf',
        function()
          require('grug-far').open({ prefills = { paths = vim.fn.expand('%') } })
        end,
        desc = 'Search/Replace in current file',
      },
      {
        '<leader>rwp',
        function()
          require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>') } })
        end,
        desc = 'Search/Replace for word under cursor',
      },
      {
        '<leader>rwf',
        function()
          require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>'), paths = vim.fn.expand('%') } })
        end,
        desc = 'Search/Replace for word under cursor',
      },
      {
        '<leader>rp',
        function()
          require('grug-far').with_visual_selection()
        end,
        desc = 'Search/Replace selection',
        mode = { 'v', 'x' },
      },
      {
        '<leader>rf',
        function()
          require('grug-far').with_visual_selection({ prefills = { paths = vim.fn.expand('%') } })
        end,
        desc = 'Search/Replace selection',
        mode = { 'v', 'x' },
      },
    },
    opts = {
      startInInsertMode = false,
    },
  },
}
