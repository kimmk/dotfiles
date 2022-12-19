
set number
set splitbelow
set splitright
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent

noremap <A-c> :vsp<cr>
noremap <A-v> :sp<cr>
noremap <A-j> <C-W><C-J>
noremap <A-k> <C-W><C-K>
noremap <A-l> <C-W><C-L>
noremap <A-h> <C-W><C-H>
noremap <A-Right> <C-W><C-L>
noremap <A-Left> <C-W><C-H>
noremap <A-Up> <C-W><C-K>
noremap <A-Down> <C-W><C-J>
noremap <A-e> :NvimTreeFindFileToggle<cr>
noremap <A-f> <cmd>Telescope find_files<cr>
noremap <A-g> <cmd>Telescope live_grep<cr>
noremap <A-d> <cmd>Telescope buffers<cr>
noremap <A-p> <cmd>Telescope help_tags<cr>
noremap <A-w> <cmd>Telescope workspaces<cr>

lua require('plugins')
lua require('setup-nvim-tree')
lua require("setup-workspaces")

