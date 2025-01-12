return {
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
          },
        },
        -- you can enable a preset for easier configuration
        presets = {
          bottom_search = true, -- use a classic bottom cmdline for search
          command_palette = true, -- position the cmdline and popupmenu together
          long_message_to_split = true, -- long messages will be sent to a split
          inc_rename = false, -- enables an input dialog for inc-rename.nvim
          lsp_doc_border = true, -- add a border to hover docs and signature help
        },
      })
    end,
    dependencies = {
      'MunifTanjim/nui.nvim',
    },
    {
      'folke/snacks.nvim',
      priority = 1000,
      lazy = false,
      opts = {
        bigfile = { enabled = true },
        dashboard = { enabled = true },
        indent = {
          enabled = false,
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
      },
    },
  },
}
