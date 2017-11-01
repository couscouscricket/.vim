set number
set shortmess=a
set clipboard^=unnamed
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab  shiftround smarttab
set showmatch
set hidden
set hlsearch incsearch
set undolevels=1000
set autochdir
set wildignorecase wildmenu wildmode=longest:list,full
set backspace=indent,eol,start
set laststatus=2
set statusline=[%n]\ %<%F\ \ \ [%M%R%H%W%Y][%{&ff}]\ \ %=\ line:%l/%L\ col:%c\ \ \ %p%%\ \ \ @%{strftime(\"%H:%M:%S\")}
set errorformat=%f:%l:%m
set mouse=a
set background=dark
set guioptions=
set guifont=Monaco:h12
set t_Co=256
colorscheme hybrid
filetype indent plugin on
syntax on

augroup cursorhi
    autocmd!
    autocmd InsertEnter * set cul
    autocmd InsertLeave * set nocul
augroup END

augroup autocompile
    autocmd!
    autocmd FileType gp set makeprg=gnuplot\ %
    autocmd FileType c set makeprg=gcc\ %
    autocmd QuickFixCmdPost * copen
augroup END

" -=====================-
" |  Keyboard mappings  |
" -=====================-
let mapleader = " "
imap jj <esc>
imap kk <esc>
nnoremap <leader>v <c-v>
nnoremap <leader>m :silent make<cr>
nnoremap <leader>q :bd<cr>
nnoremap <leader>b :b <c-d>
nnoremap <leader>f :e <c-d>
nnoremap <tab> <c-w>w
nnoremap * *N
nnoremap g* g*N
vnoremap <silent> * :<C-U>
    \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
    \gvy/<C-R><C-R>=substitute(
    \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
    \gV:call setreg('"', old_reg, old_regtype)<CR>
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

" -============-
" |  Snippets  |
" -============-
nnoremap ,html :-1read ~/.vim/skeleton/html<CR>3jf*s
autocmd FileType c nnoremap ,main :-1read ~/.vim/skeleton/c_main<CR>jf*s
autocmd FileType c nnoremap ,printf :-1read ~/.vim/skeleton/printf<CR>f*s
