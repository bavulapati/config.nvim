-- Install package manager

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- NOTE: Lazy plugin manager requires the leader key to be set before plugins
-- are loded. Otherwise wrong leader will be used.
-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = " "


require("lazy").setup(
  {
    -- The colorscheme should be available when starting Neovim
    {
      "folke/tokyonight.nvim",
      lazy = false, -- load this during startup, as it is my main colorscheme
      priority = 1000, -- make sure to load this before  all the other start plugins
    },
	-- Remove colors to make vim editor transparent
	'xiyaowong/nvim-transparent',

    -- Nvim tree
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = {
        "nvim-tree/nvim-web-devicons"
      }
    },

    -- Status line
    {
      "nvim-lualine/lualine.nvim",
      dependencies = {
        "nvim-tree/nvim-web-devicons"
      }
    },

    -- toggle comments in code
    "numToStr/Comment.nvim",

    -- Syntax highlighting
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate"
    },

    {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      dependencies = {
        'nvim-lua/plenary.nvim'
      }
    },

    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    },

    'windwp/nvim-autopairs',

    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    },
    'github/copilot.vim',
    'folke/twilight.nvim'
  }
)

