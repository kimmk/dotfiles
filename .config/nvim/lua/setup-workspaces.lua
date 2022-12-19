
require("workspaces").setup({
    -- path to a file to store workspaces data in
    -- on a unix system this would be ~/.local/share/nvim/workspaces
    path = vim.fn.stdpath("data") .. "/workspaces",
    hooks = {
        open = function (workspace)
        end,
    },
})

local telescope = require("telescope")
telescope.load_extension("workspaces")

