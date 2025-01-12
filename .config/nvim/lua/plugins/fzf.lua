return {
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local fzf = require('fzf-lua')

      fzf.setup({
        globals = {
          file_icon_padding = ' ',
        },
        winopts = {
          backdrop = 80,
          treesitter = {
            enabled = true,
          },
        },
        fzf_opts = {
          ['--layout'] = false,
        },
        keymap = {
          actions = {
            files = {
              ['ctrl-q'] = 'select-all+accept',
            },
          },
          builtin = {
            ['ctrl-q'] = 'select-all+accept',
          },
          fzf = {
            ['ctrl-q'] = 'select-all+accept',
          },
        },
        files = {
          cwd_prompt = false,
          file_icons = false,
          git_icons = false,
          color_icons = false,
          find_opts = [[-type f -not -path '*/\.git/*' -printf '%P\n']],
          rg_opts = [[--color=never --files --hidden --follow -g "!.git" ]],
          fd_opts = [[--color=never --type f --hidden --follow --exclude .git --exclude vendor]],
          actions = {
            ['ctrl-h'] = { fzf.actions.toggle_hidden },
          },
        },
        buffers = {
          file_icons = false,
        },
      })

      vim.keymap.set('n', '<leader>fa', fzf.builtin, { desc = 'Find anything' })
      vim.keymap.set('n', '<leader>fl', fzf.live_grep, { desc = 'Fuzzy live grep' })
      vim.keymap.set('n', '<leader>ff', fzf.files, { desc = 'Files' })
      vim.keymap.set('n', '<leader>f/', function()
        fzf.lgrep_curbuf({ previewer = false })
      end, { desc = 'Current file' })
      vim.keymap.set('n', '<leader>fw', fzf.grep_cword, { desc = 'Word under cursor' })
      vim.keymap.set('v', '<leader>fv', fzf.grep_visual, { desc = 'Visual selection' })
      vim.keymap.set('n', '<leader>fb', function()
        fzf.buffers({ sort_mru = true, sort_lastused = true })
      end, { desc = 'Buffers' })
      vim.keymap.set('n', '<leader>fm', fzf.keymaps, { desc = 'Keymaps' })
      vim.keymap.set('n', '<leader>fgb', fzf.git_branches, { desc = 'Branches' })
      vim.keymap.set('n', '<leader>fgc', fzf.git_commits, { desc = 'Commits' })
      vim.keymap.set('n', '<leader>fgf', fzf.git_files, { desc = 'Files' })
      vim.keymap.set('n', '<leader>fgh', fzf.git_bcommits, { desc = 'Buffer commits' })
      vim.keymap.set('n', '<leader>fgs', fzf.git_status, { desc = 'Status' })
    end,
  },
}
