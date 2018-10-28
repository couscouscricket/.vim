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
Plug 'w0ng/vim-hybrid'
call plug#end()

let g:UltiSnipsExpandTrigger="<tab>"

filetype plugin indent on
syntax on
let g:hybrid_custom_term_colors = 1
colorscheme hybrid
set background=dark

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
set statusline=\ %<%F\ \ [%M%R%H%W%Y][%{&ff}]\ %=\ [%l/%L,%v][%p%%]

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autochdir
set autoread
set autowrite

set mouse=a
set guioptions=
set guifont=Menlo:h14
set t_Co=256

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

nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>a :b#<cr>

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
