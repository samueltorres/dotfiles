return {
  {
    'MagicDuck/grug-far.nvim',
    keys = {
      {
        '<leader>sr',
        function()
          require('grug-far').open()
        end,
        desc = 'Search in project',
      },
      {
        '<leader>sw',
        function()
          require('grug-far').open({ prefills = { search = vim.fn.expand('<cword>') } })
        end,
        desc = 'Search for word under cursor',
      },
      {
        '<leader>sw',
        function()
          require('grug-far').with_visual_selection()
        end,
        desc = 'Search for selection',
        mode = { 'v', 'x' },
      },
      {
        '<leader>sf',
        function()
          require('grug-far').open({ prefills = { paths = vim.fn.expand('%') } })
        end,
        desc = 'Search in current file',
      },
      {
        '<leader>sa',
        function()
          require('grug-far').open({ engine = 'astgrep' })
        end,
        desc = 'Search with ast-grep engine',
      },
    },
    opts = {
      startInInsertMode = false,
    },
  },
}
