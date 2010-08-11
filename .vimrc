colors desert
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

colorscheme fruidle
syntax on
filetype on

au BufNewFile,BufRead *.lzx set filetype=xml
au BufNewFile,BufRead *.mkd set filetype=mkd
au BufNewFile,BufRead *.go set filetype=go
autocmd BufEnter *.fastc set filetype=cpp


" automatically save and restore folds
"au BufWinLeave * mkview
"au BufWinEnter * silent loadview

"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i

inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap " ""<Esc>:let leavechar="\""<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
imap <D-j> <Esc>:exec "normal f" . leavechar<CR>a
"imap <D-j> <Esc>?[{(]<CR>%a

vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>


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

filetype plugin on
