if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'julialang/julia-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'troydm/easybuffer.vim'
call plug#end()

colorscheme gruvbox
set background=dark

set number
set relativenumber
set scrolloff=7
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
"set statusline=\ %<%F\ \ [%M%R%H%W%Y][%{&ff}]\ %=\ [%l/%L,%v][%p%%]

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autochdir
set autoread
set autowrite

set mouse=a
set guioptions=
set guifont=Menlo:h14

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let NERDTreeQuitOnOpen=1

"" Line cursor when in insert mode.
"let &t_SI.="\e[5 q"
"let &t_SR.="\e[4 q"
"let &t_EI.="\e[1 q"

" -=====================-
" |  Keyboard mappings  |
" -=====================-
let mapleader = " "

nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>a :b#<cr>
nnoremap <leader>b :EasyBufferBotRight<cr>
nnoremap <leader>s /

nnoremap <c-u> 3k
nnoremap <c-d> 3j
vnoremap <c-u> 3k
vnoremap <c-d> 3j
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>N
nnoremap * *N
nnoremap g* g*N
vmap <leader>r *:%s//
