return {
  -- Highlight todo, notes, etc in comments
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false },
  },
  -- Noice
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    config = function()
      require('noice').setup({
        routes = {
          {
            filter = {
              event = 'msg_show',
              kind = '',
              find = 'written',
            },
            opts = { skip = true },
          },
          {
            view = 'notify',
            filter = { event = 'msg_showmode' },
          },
        },
        -- add any options here
        lsp = {
          -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
          override = {
            ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
            ['vim.lsp.util.stylize_markdown'] = true,
            ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = false, -- add a border to hover docs and signature help
        },
        cmdline = {
          format = {
            search_down = {
              view = 'cmdline',
            },
            search_up = {
              view = 'cmdline',
            },
          },
        },
      })
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    -- [[ Snacks ]] --
    {
      'folke/snacks.nvim',
      priority = 1000,
      lazy = false,
      ---@type snacks.Config
      opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        indent = {
          enabled = true,
          animate = {
            enabled = false,
          },
        },
        input = { enabled = true },
        notifier = {
          enabled = true,
          timeout = 3000,
        },
        quickfile = { enabled = true },
        statuscolumn = { enabled = true },
        words = { enabled = true },
        styles = {
          notification = {},
        },
      },
      keys = {
        {
          '<leader>bd',
          function()
            Snacks.bufdelete()
          end,
          desc = 'Delete Buffer',
        },
        {
          '<leader>cR',
          function()
            Snacks.rename.rename_file()
          end,
          desc = 'Rename File',
        },
        {
          '<leader>gB',
          function()
            Snacks.gitbrowse()
          end,
          desc = 'Git Browse',
        },
        {
          '<leader>gb',
          function()
            Snacks.git.blame_line()
          end,
          desc = 'Git Blame Line',
        },
        {
          '<leader>gf',
          function()
            Snacks.lazygit.log_file()
          end,
          desc = 'Lazygit Current File History',
        },
        {
          '<leader>gg',
          function()
            Snacks.lazygit()
          end,
          desc = 'Lazygit',
        },
        {
          '<leader>un',
          function()
            Snacks.notifier.hide()
          end,
          desc = 'Dismiss All Notifications',
        },
      },
    },
  },
}
