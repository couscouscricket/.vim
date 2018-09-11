set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ctrlpvim/ctrlp.vim'
call vundle#end()

let g:UltiSnipsExpandTrigger="<tab>"

filetype plugin indent on
colorscheme hybrid
set background=dark
syntax on

set number
set relativenumber
set cursorline
set ignorecase
set shortmess=a
set clipboard^=unnamed
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set showmatch
set hlsearch incsearch
set undolevels=1000
set wildignorecase wildmenu wildmode=longest:list,full
set backspace=indent,eol,start
set autoindent
set laststatus=2
set statusline=\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autoread
set autowrite

set mouse=""
set guioptions=
set guifont=Menlo:h14
set t_Co=256

let g:netrw_dirhistmax=0
let g:netrw_sort_sequence='[\/]$'
let g:netrw_sort_options='i'
let g:netrw_banner=0
let g:netrw_bufsettings='noma nomod nu nobl nowrap ro rnu'

let g:ctrlp_map = '<leader>f'
let g:ctrlp_cmd = 'CtrlP'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"


"" Line cursor when in insert mode.
let &t_SI.="\e[5 q"
let &t_SR.="\e[4 q"
let &t_EI.="\e[1 q"

" -=====================-
" |  Keyboard mappings  |
" -=====================-
let mapleader = " "

nnoremap <leader>s :write<cr>
nnoremap <leader>e :Explore!<cr>
nnoremap <leader>E :Vexplore!<cr>
nnoremap <leader>b :CtrlPBuffer<cr>
nnoremap <leader>a :b#<cr>

nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

imap jj <esc>
imap kk <esc>

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>N
nnoremap * *N
nnoremap g* g*N
vmap <leader>r *:%s//
