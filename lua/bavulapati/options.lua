-- [[ Settings options ]]
-- See `:help vim.o`

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Lines of context
vim.wo.scrolloff = 5

-- Size of indent
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Size of line
vim.o.textwidth = 80

-- Disable mouse
vim.o.mouse = false

-- Sync clipboard between OS and Neovim.
-- Remove this option if you want your OS clipboard to remain independent.
-- See `:help 'clipboad'`
vim.o.clipboard = 'unnamedplus'

-- Enable indent
vim.o.breakindent = true
vim.o.smartindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Hide * markup for bold and italics
vim.o.conceallevel = 3

-- Use spaces instead of tabs
vim.o.expandtab = true

--  Make all new vertical split windows appear on the right
vim.o.splitright = true

-- Folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
vim.o.foldenable = false

