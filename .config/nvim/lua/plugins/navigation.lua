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
  -- Leap
  {
    'ggandor/leap.nvim',
  },
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
      { '<leader>e', ':Neotree reveal<CR>', desc = 'File tree', silent = true },
    },
    opts = {
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        use_libuv_file_watcher = true,
        filtered_items = {
          hide_by_pattern = {
            'vendor',
          },
          always_show = {
            '.config',
          },
        },
        window = {
          mappings = {
            ['<leader>e'] = 'close_window',
            ['<tab>'] = {
              'open',
              nowait = true, -- disable `nowait` if you have existing combos starting with this char that you want to use
            },
          },
        },
      },
    },
  },
}
