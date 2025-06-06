return {
{
  "kyazdani42/nvim-web-devicons",
},
{
  "nvim-lualine/lualine.nvim",
  opts = {
    options = {
      theme = "material"
    },
    sections = {
      lualine_a = {'mode'},
      lualine_b = {'filename'},
      lualine_c = {},
      lualine_x = {'branch'},
      lualine_y = {'encoding'},
      lualine_z = {'location'}
    }
  },
},
{
  "nvim-tree/nvim-tree.lua",
  init = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
  end,
  opts = {
    view = {
      adaptive_size = true,
      side = "right",
    },
  },
},
{
  "ryanoasis/vim-devicons",
},
{
  "airblade/vim-gitgutter",
},
}
