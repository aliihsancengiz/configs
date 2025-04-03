return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
  use {
	  "ThePrimeagen/harpoon",
	  branch = "harpoon2",
	  requires = { {"nvim-lua/plenary.nvim"} }
  }
  -- use 'williamboman/mason.nvim'
  -- use 'williamboman/mason-lspconfig.nvim'
  -- use 'neovim/nvim-lspconfig' 
  -- use 'simrat39/rust-tools.nvim'
end)
