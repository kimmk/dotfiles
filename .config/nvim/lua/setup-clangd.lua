local lspconfig = require'lspconfig'

lspconfig.clangd.setup{
  cmd = { "clangd", "--background-index" },
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

