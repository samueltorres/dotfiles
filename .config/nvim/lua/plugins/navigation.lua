return {
  -- Easy navigation between tmux and nvim
  {
    'christoomey/vim-tmux-navigator',
    cmd = {
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = {
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
    },
  },

  -- Nvim-tree
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    opts = {
      view = {
        adaptive_size = true,
        side = 'right',
      },
      update_focused_file = {
        enable = true,
      },
      filters = {
        custom = {
          '.git',
          'vendor',
        },
      },
      renderer = {
        highlight_git = 'name',
        icons = {
          web_devicons = {
            file = {
              color = false,
            },
          },
          show = {
            git = false,
          },
        },
      },
    },
  },

  -- Leap
  {
    'ggandor/leap.nvim',
    opts = {},
  },
}
