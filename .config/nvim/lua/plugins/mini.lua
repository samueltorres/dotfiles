return {
  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [']quote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup({ n_lines = 500 })

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      -- Startup screen
      local starter = require('mini.starter')
      starter.setup({
        evaluate_single = true,
        items = {
          {
            { name = 'Edit new buffer', action = 'enew', section = '' },
            { action = 'Telescope find_files', name = 'Find Files', section = '' },
            { action = 'Telescope live_grep', name = 'Live grep', section = '' },
            { action = 'Telescope oldfiles', name = 'Recent files', section = '' },
            { name = 'Quit Neovim', action = 'qall', section = '' },
          },
        },
        content_hooks = {
          starter.gen_hook.adding_bullet(),
          starter.gen_hook.aligning('center', 'center'),
        },
        footer = '',
      })
    end,
  },
}
