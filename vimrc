if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'mbbill/undotree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'justinmk/vim-dirvish'
call plug#end()

colorscheme gruvbox
set background=dark

set undofile
set undodir=~/.vim/undodir
set number
set encoding=utf8
set relativenumber
set scrolloff=1
set cursorline
set ignorecase
set shortmess=a
set clipboard^=unnamed
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set showmatch
set hlsearch incsearch
set gdefault
set undolevels=100
set wildignorecase wildmenu wildmode=longest:list,full
set backspace=indent,eol,start
set autoindent
set laststatus=2

set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set autoread
set autowrite

set mouse=a
set guioptions=
set guifont=Menlo:h12

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_do_enddo=1

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:terminal_ansi_colors = [
      \ '#fdf4c1', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#665c54',
      \ '#a89984', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']

" -=====================-
"  | Keyboard mappings |
" -=====================-
let mapleader = " "

nnoremap <leader>a :b#<cr>
nnoremap <leader>e :Dirvish %:p:h<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>u :UndotreeShow<cr>:UndotreeFocus<cr>

nnoremap <c-u> 3<c-y>3gk
nnoremap <c-d> 3<c-e>3gj
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap j gj
nnoremap k gk

nnoremap * *N
nnoremap g* g*N
