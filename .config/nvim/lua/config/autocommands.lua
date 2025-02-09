-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Toggle highlighting current line only in active splits {{{1
vim.api.nvim_create_autocmd({ 'VimEnter', 'WinEnter', 'BufWinEnter', 'VimLeave', 'WinLeave', 'BufWinLeave' }, {
  group = vim.api.nvim_create_augroup('user_toggle_cursorline', { clear = true }),
  desc = 'toggle cursorline on focus',
  pattern = '*',
  callback = function(ev)
    vim.opt_local.cursorline = ev.event:find 'Enter' ~= nil
  end,
})

vim.api.nvim_create_autocmd({ 'QuitPre' }, {
  callback = function()
    Snacks.explorer.close()
  end,
})
