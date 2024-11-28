return {
  -- Adds git related signs to the gutter
  {
    'lewis6991/gitsigns.nvim',
    opts = {},
  },

  --LazyGit
  {
    'kdheepak/lazygit.nvim',
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
  },

  -- GitPortal
  {
    'trevorhauter/gitportal.nvim',
    config = function()
      local gitportal = require('gitportal')

      gitportal.setup({
        always_include_current_line = true,
      })
      -- open_file_in_browser() in normal mode
      -- Opens the current file in your browser on the correct branch/commit.
      vim.keymap.set('n', '<leader>gg', function()
        gitportal.open_file_in_browser()
      end)

      -- open_file_in_browser() in visual mode
      -- This behaves the same but it also includes the selected line(s) in the permalink.
      vim.keymap.set('v', '<leader>gg', function()
        gitportal.open_file_in_browser()
      end)

      -- open_file_in_neovim()
      -- Requests a github link, optionally switches to the branch/commit, and
      -- opens the specified file in neovim. Line ranges, if included, are respected.
      vim.keymap.set('n', '<leader>gi', function()
        gitportal.open_file_in_neovim()
      end)
    end,
  },
}
