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
Plug 'mbbill/undotree'
call plug#end()

colorscheme gruvbox
set background=dark

set undofile
set undodir=~/.vim/undodir
set number
set encoding=utf8
set relativenumber
set foldmethod=syntax
set scrolloff=7
set cursorline
set ignorecase
set shortmess=a
set clipboard^=unnamed
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set showmatch
set hlsearch incsearch
set gdefault
set undolevels=1000
set wildignorecase wildmenu wildmode=longest:list,full
set backspace=indent,eol,start
set autoindent
set laststatus=2

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autochdir
set autoread
set autowrite

set mouse=a
set guioptions=
set guifont=Menlo:h12

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_do_enddo=1
let g:xml_syntax_folding=1 

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let NERDTreeQuitOnOpen=1
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:terminal_ansi_colors = [
      \ '#fdf4c1', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#665c54',
      \ '#a89984', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']

" -=====================-
" |  Keyboard mappings  |
" -=====================-
let mapleader = " "

nnoremap <leader>f :NERDTreeFind<cr>
nnoremap <leader>a :b#<cr>
nnoremap <leader>b :ls<cr>:b<space>
nnoremap <leader>u :UndotreeToggle<cr>
nnoremap <leader>s /\v

nnoremap <c-u> 3k
nnoremap <c-d> 3j
vnoremap <c-u> 3k
vnoremap <c-d> 3j
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap j gj
nnoremap k gk

vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>N
nnoremap * *N
nnoremap g* g*N
vmap <leader>r *:%s//
