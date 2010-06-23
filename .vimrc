set hlsearch
set number
set expandtab
set softtabstop=4
set shiftwidth=4
set tabstop=4
set background=dark
set autoindent
set textwidth=0
set columns=120

syntax on
filetype on

if has("autocmd")
    filetype indent on
endif

au BufNewFile,BufRead *.treetop set filetype=treetop
au BufNewFile,BufRead *.mkd set filetype=mkd
au BufNewFile,BufRead *.markdown set filetype=mkd
au BufRead,BufNewFile *.go set filetype=go

filetype plugin on

" automatically save and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

" map ":make" to the F9 key
imap <D-CR> <ESC>:!make -s run<CR>
nmap <D-CR> :!make -s run<CR>

imap <S-D-CR> <ESC>:!make -s test<CR>
nmap <S-D-CR> :!make -s test<CR>


set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
set cursorline
set shortmess+=I
inoremap <D-CR> <C-O>o
set backspace=indent,eol,start
set ruler
set foldcolumn=4


colors emacs
