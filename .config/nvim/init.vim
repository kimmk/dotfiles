
lua require("plugins")
lua require("setup-nvim-tree")
lua require("setup-lualine")

set number
set splitbelow
set splitright
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

colorscheme catppuccin

noremap <C-j> <C-W><C-J>
noremap <C-k> <C-W><C-K>
noremap <C-l> <C-W><C-L>
noremap <C-h> <C-W><C-H>
noremap <A-h> <C-W><
noremap <A-l> <C-W>>
noremap <A-j> <C-W>-
noremap <A-k> <C-W>+
noremap <A-e> :NvimTreeFindFileToggle<cr>
noremap <A-f> <cmd>Telescope find_files<cr>
noremap <A-g> <cmd>Telescope live_grep<cr>
noremap <A-d> <cmd>Telescope buffers<cr>
noremap <A-p> <cmd>Telescope help_tags<cr>

