call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug '/usr/local/opt/fzf'
Plug 'vifm/vifm.vim'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-sensible'
Plug 'lervag/vimtex'
Plug 'sillybun/vim-repl'
Plug 'godlygeek/tabular'
Plug 'vimwiki/vimwiki'
call plug#end()

colorscheme gruvbox
set background=dark

set undofile undodir=~/.vim/undodir undolevels=100
set number scrolloff=1
set cursorline
set timeout timeoutlen=3000 ttimeoutlen=10
set noshowmode
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround smarttab
set laststatus=2 shortmess=ac
set hlsearch incsearch ignorecase
set lazyredraw
set encoding=utf8
set clipboard^=unnamed,unnamedplus
set showmatch
set backspace=indent,eol,start autoindent
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
set mouse=a
set guioptions= guifont=Monaco:h14
set wrap linebreak breakindent breakindentopt=shift:4
set regexpengine=0

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_do_enddo=1

let g:terminal_ansi_colors = [
      \ '#fdf4c1', '#cc241d', '#98971a', '#d79921', '#458588', '#b16286', '#689d6a', '#665c54',
      \ '#a89984', '#9d0006', '#79740e', '#b57614', '#076678', '#8f3f71', '#427b58', '#3c3836']

let g:vimtex_compiler_latexmk = { 
        \ 'executable' : 'latexmk',
        \ 'continuous' : 0,
        \ 'options' : [ 
        \   '-xelatex',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
        \ ],
        \}
let g:tex_flavor = 'latex'
let g:latex_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
let g:vimtex_view_general_viewer = '/Applications/Skim.app/Contents/MacOS/Skim'
let g:vimtex_view_method = 'skim'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abmg'

let g:repl_program = {
            \   'default': 'fish',
            \   'r': 'R --no-save',
            \   'python': 'python3',
            \   'julia': 'julia',
            \   'haskell': 'ghci',
            \   'sql': 'pgcli postgres enrique'
            \   }
let g:repl_position = 3

let g:lightline = { 'colorscheme': 'wombat' }

" coc sensible defaults
set hidden
set nobackup
set nowritebackup
set updatetime=300
set signcolumn=yes
let g:coc_node_path = '/usr/local/bin/node'
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

autocmd BufRead,BufNewFile *.gp set filetype=gnuplot
autocmd BufRead,BufNewFile *.plt set filetype=gnuplot
autocmd BufRead,BufNewFile *.gnuplot set filetype=gnuplot
autocmd BufRead,BufNewFile *.cls set filetype=tex


" -=====================-
"  | Keyboard mappings |
" -=====================-
let mapleader = " "
let maplocalleader = " "

" Navigation between files and buffers
nnoremap <leader>e :Vifm<cr>
nnoremap <leader>f :FZF %:p:h<cr>
nnoremap <leader>F :FZF ~/Dropbox<cr>
nnoremap <leader>g :Rg<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>a :b#<cr>

" Search and replace shortcuts
nnoremap <leader>s /
nnoremap <leader>r :%s-
vnoremap <leader>r :s-\%V

nnoremap <leader>: q:
nnoremap <leader>/ q/
nnoremap <leader>? q?
nnoremap <leader>u :UndotreeToggle<bar>:UndotreeFocus<cr>
vnoremap <leader>T :'<,'>!csvlook -I<cr>
vnoremap <leader>t :'<,'>!csvlook -HI<cr>

nnoremap j gj
nnoremap k gk
nnoremap <c-u> 3<c-y>3gk
nnoremap <c-d> 3<c-e>3gj
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <leader>x ZQ

nnoremap * *N
nnoremap g* g*N

" Compile and run scripts
autocmd filetype python nnoremap <leader>c :w <bar> exec '!python3 '.shellescape('%')<CR>
autocmd filetype julia nnoremap <leader>c :w <bar> exec '!julia '.shellescape('%')<CR>
autocmd filetype tex nnoremap <leader>c :w <bar> VimtexCompile<CR>
autocmd filetype gnuplot nnoremap <leader>c :w <bar> exec '!gnuplot '.shellescape('%')<CR>
"autocmd filetype tex nnoremap <leader>c :w <bar> exec '!latexmk -silent -xelatex '.shellescape('%')<CR>

" Disables Ex mode
map Q <Nop>
