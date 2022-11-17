local utils = require 'utils'

local packer_bootstrap = utils.ensure_packer()

local packer = require "packer"
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'sainnhe/sonokai'

  use {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
  }

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }

  use {
    'ibhagwan/fzf-lua',
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end,
  }

  use 'numToStr/Comment.nvim'
  use 'numToStr/FTerm.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'ggandor/leap.nvim'
  use 'windwp/nvim-autopairs'

  -- Auto-sync after cloning packer.nvim.
  if packer_bootstrap then
    require('packer').sync()
  end
end)
