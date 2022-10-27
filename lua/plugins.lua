local utils = require 'utils'

local packer_bootstrap = utils.ensure_packer()

local packer = require "packer"
return packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'numToStr/FTerm.nvim'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use {
    'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'ggandor/leap.nvim'
  use 'marko-cerovac/material.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use 'windwp/nvim-autopairs'
  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  }
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
  })
  use 'numToStr/Comment.nvim'
  use 'tamton-aquib/duck.nvim'

  -- Auto-sync after cloning packer.nvim.
  if packer_bootstrap then
    require('packer').sync()
  end
end)
