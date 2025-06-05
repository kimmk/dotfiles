vim.keymap.set('n', '<C-LeftMouse>', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gd', vim.lsp.buf.declaration)
vim.keymap.set('n', 'gD', vim.lsp.buf.definition)
vim.keymap.set('n', 'gr', vim.lsp.buf.references)
vim.keymap.set('n', '<space>td', vim.lsp.buf.declaration)
vim.keymap.set('n', '<space>tD', vim.lsp.buf.definition)
vim.keymap.set('n', '<space>ti', vim.lsp.buf.implementation)
vim.keymap.set('n', '<space>tt', vim.lsp.buf.type_definition)
vim.keymap.set('n', '<space>tr', vim.lsp.buf.references)
vim.keymap.set('n', '<space>tR', vim.lsp.buf.rename)
vim.keymap.set('n', 'K', vim.lsp.buf.hover)
vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help)
vim.keymap.set({ 'n', 'v' }, '<space>ta', vim.lsp.buf.code_action)

vim.lsp.config.clangd = {
  cmd = {
    "clangd",
    "--background-index",
    "--clang-tidy",
    "--completion-style=detailed",
    "--fallback-style=llvm",
    "--header-insertion=never",
  },
}

