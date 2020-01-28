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
Plug 'vim-airline/vim-airline-themes'
Plug 'mbbill/undotree'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'lervag/vimtex'
Plug 'tpope/vim-surround'
Plug 'francoiscabrol/ranger.vim'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
call plug#end()

colorscheme gruvbox
set background=dark

set undofile undodir=~/.vim/undodir undolevels=100
set number relativenumber scrolloff=1 cursorline
set wildignorecase wildmenu wildmode=longest:full,full
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set laststatus=2 shortmess=a
set hlsearch incsearch ignorecase
set gdefault
set lazyredraw
set encoding=utf8
set clipboard^=unnamed,unnamedplus
set showmatch
set backspace=indent,eol,start autoindent
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set mouse=a
set guioptions= guifont=Monaco:h14

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_do_enddo=1

let g:airline_theme='base16_chalk'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:terminal_ansi_colors = [
      \ '#fdf4c1', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#665c54',
      \ '#a89984', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']

let g:tex_flavor = 'latex'
let g:latex_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'

"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
"augroup END

" -=====================-
"  | Keyboard mappings |
" -=====================-
let mapleader = " "
let maplocalleader = " "

nnoremap <leader>a :b#<cr>
nnoremap <leader>e :FZF<cr>
nnoremap <leader>f :Ranger<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>u :UndotreeShow<cr>:UndotreeFocus<cr>
nnoremap <leader>q @
nnoremap <leader>: q:
nnoremap <leader>/ q/
nnoremap <leader>? q?
vnoremap <leader>t :'<,'>!csvlook -I<cr>

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

" Disables Ex mode
map Q <Nop>
