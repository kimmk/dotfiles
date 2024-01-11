set number relativenumber
set cursorline
set splitbelow
set splitright
set scrolloff=5
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set updatetime=100
set listchars=space:·,tab:»·,leadmultispace:~···
set list

colorscheme catppuccin

lua require("plugins")
lua require("clipboard")

let mapleader = "\<space>"
imap <C-H> <C-W>
noremap <A-Left> <C-o>
noremap <A-Right> <C-i>
noremap <A-h> <C-W><
noremap <A-l> <C-W>>
noremap <A-j> <C-W>-
noremap <A-k> <C-W>+
nnoremap <leader>Y "+Y
vnoremap <leader>Y "+Y
nnoremap <leader>P "+P
vnoremap <leader>P "+P
nnoremap <leader>X "+X
vnoremap <leader>X "+X
nnoremap <leader>D "+D
vnoremap <leader>D "+D
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>x "+x
vnoremap <leader>x "+x
nnoremap <leader>d "+d
vnoremap <leader>d "+d
nnoremap <leader>w <cmd>b#<cr>
nnoremap <leader>e <cmd>NvimTreeFindFile<cr>
nnoremap <leader>E <cmd>NvimTreeClose<cr>
nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>r <cmd>Telescope buffers<cr>
nnoremap <leader>? <cmd>Telescope help_tags<cr>
nnoremap <leader>q <cmd>ClangdSwitchSourceHeader<cr>
nnoremap <leader>* <cmd>execute 'Telescope live_grep default_text=' . expand('<cword>')<cr>
nnoremap <leader>hb <cmd>terminal git --no-pager blame -c % && sleep 0.05<cr>
nnoremap <leader>hd <cmd>terminal git --no-pager diff HEAD % && sleep 0.05<cr>

