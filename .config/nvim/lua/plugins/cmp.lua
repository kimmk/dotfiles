return {
{
  'hrsh7th/cmp-nvim-lsp'
},
{
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "zbirenbaum/copilot-cmp",
  },
  opts = function()
    local cmp = require("cmp")
    return {
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
          select = false,
        }),
        ['<Tab>'] = cmp.mapping.confirm({
          select = false,
        }),
      }),
      sources = cmp.config.sources ({
        { name = 'nvim_lsp' },
        { name = 'copilot' },
      }),
    }
  end
}
}
