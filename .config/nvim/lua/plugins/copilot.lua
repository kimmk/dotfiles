return {
{
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  opts = {
    filetypes = {
      ["*"] = true,
    },
    suggestion = { enabled = false },
    panel = { enabled = false },
  },
},
{
  'zbirenbaum/copilot-cmp',
   config = function ()
     require("copilot_cmp").setup()
   end
}
}
