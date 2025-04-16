return {
  -- Go
  {
    'ray-x/go.nvim',
    dependencies = {
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    opts = {},
    event = { 'CmdlineEnter' },
    ft = { 'go', 'gomod' },
    build = ':lua require("go.install").update_all_sync()',
    keys = {
      {
        '<leader>ta',
        ':GoTest<CR>',
        desc = 'Go test function',
      },
      {
        '<leader>tt',
        ':GoTestFunc -n 1<CR>',
        desc = 'Go test function',
      },
      {
        '<leader>ts',
        ':GoTestFunc -s -n 1<CR>',
        desc = 'Go test function selection',
      },
      {
        '<leader>tf',
        ':GoTestFile -n 1<CR>',
        desc = 'Go test file',
      },
      {
        '<leader>tp',
        ':GoTestPkg -n 1<CR>',
        desc = 'Go test package',
      },
    },
  },
}
