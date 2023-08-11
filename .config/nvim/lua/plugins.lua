
return require('packer').startup(function(use)

use 'wbthomason/packer.nvim'

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true },
  config = function ()
    require("lualine").setup {
      options = {
        theme = "material"
      },
  }
  end
}

use 'nvim-lua/plenary.nvim'

use 'neovim/nvim-lspconfig'

use 'hrsh7th/vim-vsnip'

use {
  'hrsh7th/nvim-cmp',
  config = function ()
    local cmp = require'cmp'
    cmp.setup {
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
          select = true,
        }),
      }),
      sources = {
        { name = 'nvim_lsp' },
        { name = 'copilot' },
      }
    }
    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    require'lspconfig'.clangd.setup {
      capabilities = capabilities,
    }
  end
}

use 'hrsh7th/cmp-nvim-lsp'

use 'nvim-telescope/telescope.nvim'

use {
  'nvim-tree/nvim-tree.lua',
  config = function ()
    -- disable netrw (strongly advised)
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    -- set termguicolors to enable highlight groups
    -- vim.opt.termguicolors = true
    require("nvim-tree").setup({
      view = {
        adaptive_size = true,
        side = "right",
      },
    })
  end
}

use 'ryanoasis/vim-devicons'

use 'airblade/vim-gitgutter'

use {
  'zbirenbaum/copilot.lua',
  cmd = 'Copilot',
  config = function ()
    require("copilot").setup({
      suggestion = { enabled = false },
      panel = { enabled = false },
    })
  end
}

use {
  'zbirenbaum/copilot-cmp',
  after = { 'copilot.lua' },
  config = function ()
    require("copilot_cmp").setup()
  end
}

use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {}
  end
}

use { "catppuccin/nvim", as = "catppuccin" }

local lspconfig = require'lspconfig'
lspconfig.clangd.setup{
  cmd = { "clangd", "--background-index", "--offset-encoding=utf-8",},
  filetypes = { "c", "cpp", "objc", "objcpp" },
  on_attach = function(client, bufnr)
    require'completion'.on_attach(client, bufnr)
  end,
  root_dir = function(fname)
    return lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname) or lspconfig.util.path.dirname(fname)
  end,
  flags = {
    debounce_text_changes = 150,
  }
}

end)

