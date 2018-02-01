set number
set shortmess=a
set clipboard^=unnamed
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set showmatch
set hidden
set hlsearch incsearch
set undolevels=1000
set autochdir
set wildignorecase wildmenu wildmode=longest:list,full
set backspace=indent,eol,start
set autoindent
set gdefault
set laststatus=2
set statusline=\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ 
set mouse=a
set background=dark
set guioptions=
set guifont=Menlo:h11
set t_Co=256
set autoread
colorscheme hybrid
filetype plugin indent on
syntax on

let g:netrw_liststyle=3

augroup cursorhi
    autocmd!
    autocmd InsertEnter * set cul
    autocmd InsertLeave * set nocul
augroup END

augroup autocompile
    autocmd!
    autocmd FileType gp nnoremap <leader>m :w<cr>:!gnuplot %<cr>
    autocmd FileType c nnoremap <leader>m :w<cr>:!gcc %<cr>
augroup END

" -=====================-
" |  Keyboard mappings  |
" -=====================-
let mapleader = " "

nnoremap <leader>a :argadd <c-d>*
nnoremap <leader>b :ls<cr>:b 
nnoremap <leader>e :e <c-d>*
nnoremap <leader>q :b#<cr>
inoremap <silent> ,f <c-x><c-f>
inoremap <silent> ,l <c-x><c-l>
inoremap <silent> ,p <c-x><c-p>

imap jj <esc>
imap kk <esc>
nnoremap <CR> G
nnoremap <leader>v <c-v>
nnoremap <c-j> <c-d>
nnoremap <c-k> <c-u>
nnoremap <tab> <c-w>w

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>N
nnoremap * *N
nnoremap g* g*N
vmap <leader>s *:%s//
