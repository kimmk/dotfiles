
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
      sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {'branch'},
        lualine_y = {'encoding'},
        lualine_z = {'location'}
      }
  }
  end
}

use 'nvim-lua/plenary.nvim'

use 'neovim/nvim-lspconfig'

use 'hrsh7th/vim-vsnip'

use 'hrsh7th/nvim-cmp'

use 'hrsh7th/cmp-nvim-lsp'

use 'nvim-telescope/telescope.nvim'
use 'nvim-telescope/telescope-fzy-native.nvim'

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
    vim.o.timeoutlen = 250
    require("which-key").setup {}
  end
}

use { "catppuccin/nvim", as = "catppuccin" }

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
    ['<Tab>'] = cmp.mapping.confirm({
      select = true,
    }),
  }),
  sources = cmp.config.sources ({
    { name = 'nvim_lsp' },
    { name = 'copilot' },
  }),
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

local lspconfig = require'lspconfig'
lspconfig.pyright.setup {}
lspconfig.clangd.setup {
  cmd = { "clangd", "--header-insertion=never", "--background-index", "--offset-encoding=utf-8"},
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = function(fname)
    return lspconfig.util.root_pattern("compile_commands.json", "compile_flags.txt", ".git")(fname) or lspconfig.util.path.dirname(fname)
  end,
  flags = {
    debounce_text_changes = 150,
  },
  capabilities = capabilities,
}

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', '<C-LeftMouse>', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>td', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', '<space>tD', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<space>ti', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
    vim.keymap.set('n', '<space>twa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<space>twr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set('n', '<space>twl', function()
      print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, opts)
    vim.keymap.set('n', '<space>tt', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<space>tR', vim.lsp.buf.rename, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ta', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>tr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', '<space>tf', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

local telescope = require('telescope')
telescope.load_extension('fzy_native')
telescope.setup({
  pickers = {
    find_files = {
      hidden = true,
      ignore_case = true,
    },
    buffers = {
      sort_lastused = true,
      sort_mru = true,
    },
  }
})

end)

