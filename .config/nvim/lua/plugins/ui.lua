return {
  -- Todo comments
  {
    'folke/todo-comments.nvim',
    event = 'vimenter',
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
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      {
        'rcarriga/nvim-notify',
        opts = {
          stages = 'fade',
          render = 'compact',
          timeout = 1000,
          level = 'ERROR',
        },
      },
    },
  },

  -- Lualine
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = false,
          component_separators = '|',
          section_separators = '',
          theme = 'rose-pine',
        },
        extensions = {
          'nvim-tree',
          'oil',
          'trouble',
        },
      })
    end,
  },

  -- Which-key
  {
    'folke/which-key.nvim',
    event = 'VimEnter',
    config = function()
      require('which-key').setup()
    end,
  },
}
