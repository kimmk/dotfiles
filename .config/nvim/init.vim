
lua require("plugins")
lua require("setup-nvim-tree")
lua require("setup-lualine")
lua require("setup-clangd")
lua require("setup-copilot")
lua require("setup-cmp")
lua require("clipboard")

set number
set splitbelow
set splitright
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set updatetime=100
set listchars=space:·,tab:»·
set list

colorscheme catppuccin

let mapleader = "\<space>"
imap <C-H> <C-W>
noremap <A-Left> <C-o>
noremap <A-Right> <C-i>
noremap <A-h> <C-W><
noremap <A-l> <C-W>>
noremap <A-j> <C-W>-
noremap <A-k> <C-W>+
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>e <cmd>NvimTreeFindFileToggle<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>r <cmd>Telescope buffers<cr>
nnoremap <leader>? <cmd>Telescope help_tags<cr>

