
return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use 'nvim-lua/plenary.nvim'
use 'neovim/nvim-lspconfig'
use 'hrsh7th/vim-vsnip'
use 'hrsh7th/nvim-cmp'
use 'hrsh7th/cmp-nvim-lsp'
use 'nvim-telescope/telescope.nvim'
use 'nvim-tree/nvim-tree.lua'
use 'ryanoasis/vim-devicons'
--use 'ntpeters/vim-better-whitespace'
use 'airblade/vim-gitgutter'
-- use 'github/copilot.vim'
use 'zbirenbaum/copilot.lua'
use {
  'zbirenbaum/copilot-cmp',
  after = { 'copilot.lua' },
  config = function ()
    require("copilot_cmp").setup()
  end
}
use { "catppuccin/nvim", as = "catppuccin" }

end)

