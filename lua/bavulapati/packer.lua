-- Install package manager
-- https://github.com/wbthomason/packer.nvim

vim.cmd [[packadd packer.nvim]]

return require("packer").startup(
  function(use)
    -- Packer can manage itself
    use "wbthomason/packer.nvim"

    -- Theme
    use "folke/tokyonight.nvim"

    -- Nvim tree
    use {
      "nvim-tree/nvim-tree.lua",
      requires = {
        "nvim-tree/nvim-web-devicons",
        opt = true
      }
    }

    -- Status line
    use {
      "nvim-lualine/lualine.nvim",
      requires = {
        "nvim-tree/nvim-web-devicons",
        opt = true
      }
    }

    -- toggle comments in code
    use "numToStr/Comment.nvim"

    -- Syntax highlighting
    use {
      "nvim-treesitter/nvim-treesitter",
      {
        run = ":TSUpdate"
      }
    }

    use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      requires = {
        {
          'nvim-lua/plenary.nvim'
        }
      }
    }

    use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    use {
      'windwp/nvim-autopairs'
    }

    use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      requires = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {                                      -- Optional
          'williamboman/mason.nvim',
          run = function()
            pcall(vim.cmd, 'MasonUpdate')
          end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},     -- Required
        {'hrsh7th/cmp-nvim-lsp'}, -- Required
        {'L3MON4D3/LuaSnip'},     -- Required
      }
    }

  end
)

