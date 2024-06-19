vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable wrapping
vim.opt.wrap = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 50

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300
vim.opt.ttimeoutlen = 10
vim.opt.timeout = true

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  and `:help 'listchars'`
vim.opt.list = true -- Show special characters
vim.opt.listchars = {
  -- eol = '↲',
  tab = '  ',
  extends = '›',
  precedes = '‹',
  trail = '•',
}
vim.opt.fillchars = {
  diff = '░',
  msgsep = '‾',
  fold = ' ',
  foldopen = '▾',
  foldclose = '▸',
}

-- Folds
vim.o.foldcolumn = 'auto'
vim.o.foldmethod = 'indent'
vim.o.foldlevel = 99
vim.o.foldenable = false

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true

-- Enable termguicolors for colorizer
vim.opt.termguicolors = true

-- Hide command line when its not being used
vim.opt.cmdheight = 0

-- Don't use swapfile
vim.opt.swapfile = false -- Disable swapfiles
vim.opt.undofile = true -- Enable persistent undo
vim.opt.backup = false -- Disable backups
vim.opt.writebackup = false -- Disable backups

-- Indent
vim.opt.wrap = false -- wrap lines longer than the width of the window
vim.opt.expandtab = true -- Use the appropriate number of spaces to insert a <Tab>
vim.opt.autoindent = true -- Copy indent from current line when starting a new line
vim.opt.smarttab = true -- Makes tabbing smarter
vim.opt.smartindent = true -- Makes indentation smarter
vim.opt.tabstop = 4 -- Number of spaces in tab when displaying a file
vim.opt.softtabstop = 4 -- Number of spaces in tab when editing a file
vim.opt.shiftwidth = 4 -- Number of spaces to use for autoindent
vim.opt.joinspaces = false -- Insert only one space with a join command
