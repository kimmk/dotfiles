
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
set clipboard+=unnamed
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set updatetime=100

colorscheme catppuccin

nnoremap y "+y
vnoremap y "+y
nnoremap p "+p
vnoremap p "+p
nnoremap x "_x
vnoremap x "_x
nnoremap d "_d
vnoremap d "_d
imap <C-H> <C-W>
noremap <A-h> <C-W><
noremap <A-l> <C-W>>
noremap <A-j> <C-W>-
noremap <A-k> <C-W>+
noremap <A-e> :NvimTreeFindFileToggle<cr>
noremap <A-f> <cmd>Telescope find_files<cr>
noremap <A-g> <cmd>Telescope live_grep<cr>
noremap <A-d> <cmd>Telescope buffers<cr>
noremap <A-p> <cmd>Telescope help_tags<cr>

