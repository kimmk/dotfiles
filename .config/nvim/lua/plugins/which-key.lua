return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  setup = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 250
  end,
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
