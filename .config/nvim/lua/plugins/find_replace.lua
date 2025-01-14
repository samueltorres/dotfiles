return {
  {
    'MagicDuck/grug-far.nvim',
    keys = {
      {
        '<leader>r',
        function()
          require('grug-far').open()
        end,
        desc = 'Search/Replace in project',
      },
      {
        '<leader>rw',
        function()
          require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } }
        end,
        desc = 'Search/Replace for word under cursor',
      },
      {
        '<leader>rw',
        function()
          require('grug-far').with_visual_selection()
        end,
        desc = 'Search/Replace selection',
        mode = { 'v', 'x' },
      },
      {
        '<leader>rf',
        function()
          require('grug-far').open { prefills = { paths = vim.fn.expand '%' } }
        end,
        desc = 'Search/Replace in current file',
      },
    },
    opts = {
      startInInsertMode = false,
    },
  },
}
