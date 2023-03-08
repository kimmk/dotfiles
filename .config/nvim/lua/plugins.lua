
return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use 'nvim-lua/plenary.nvim'
use 'matbme/JABS.nvim'
use 'nvim-telescope/telescope.nvim'
use 'nvim-tree/nvim-tree.lua'
use 'willthbill/opener.nvim'
use 'ryanoasis/vim-devicons'
use 'ntpeters/vim-better-whitespace'
use 'github/copilot.vim'
use 'airblade/vim-gitgutter'
use { "catppuccin/nvim", as = "catppuccin" }

end)

