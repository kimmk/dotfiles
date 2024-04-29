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

" autocmd FileType c,cpp,objc,objcpp autocmd BufWritePost <buffer> LspRestart

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
nnoremap <leader>. <cmd>NvimTreeCollapse<cr>
nnoremap <leader>F <cmd>GFiles<cr>
nnoremap <leader>f <cmd>Files<cr>
nnoremap <leader>g <cmd>Rg<cr>
nnoremap <leader>r <cmd>Buffers<cr>
nnoremap <leader>? <cmd>Helptags<cr>
nnoremap <leader>q <cmd>ClangdSwitchSourceHeader<cr>
nnoremap <leader>* <cmd>execute 'Rg '. expand('<cword>')<cr>
nnoremap <leader>hb <cmd>terminal git --no-pager blame -c % && sleep 0.05<cr>
nnoremap <leader>hd <cmd>terminal git --no-pager diff HEAD % && sleep 0.05<cr>
vnoremap <leader>hl <cmd>execute 'terminal git log -L ' . line("'<") . "," . line("'>") . ":%"<cr>

