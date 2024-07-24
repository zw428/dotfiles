set nocompatible
set nobackup
set number
set ruler
set virtualedit=all
set formatoptions-=t
set lazyredraw
set preserveindent
set copyindent
set backupdir=/tmp//
set directory=/tmp//

"statusline
set laststatus=2 "always show statusline
hi Statusline ctermbg=white ctermfg=17

set bs=2
set autoindent

set background=dark

set hlsearch

syntax enable

set clipboard=unnamed

highlight Normal guifg=White guibg=Black

"gui stuff

set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L

"highlighting

set hlsearch


set tabpagemax=1000
"commands for setting tab length
command -nargs=1 Spacetab set shiftwidth=<args> tabstop=<args> expandtab smarttab
command Tabtab set shiftwidth=8 tabstop=8 noexpandtab nosmarttab

" fzf, tab shortcuts
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mcchrish/nnn.vim'
call plug#end()

set splitright
set splitbelow

nnoremap <Esc>n :call system('terminator --working-directory ' . expand("%:p:h"))<CR>
" nnoremap <Esc>n :tabe \| NnnPicker<CR>
nnoremap <Esc>e :Files<CR>
nnoremap <Esc>t :tabe \| Files<CR>
nnoremap <Esc>s :vsplit \| Files<CR>
nnoremap <Esc>v :split \| Files<CR>

nnoremap <Esc>h gT<CR>
nnoremap <Esc>l gt<CR>

nnoremap <Esc>q :q<CR>

nnoremap <Esc>1 1gt<CR>
nnoremap <Esc>2 2gt<CR>
nnoremap <Esc>3 3gt<CR>
nnoremap <Esc>4 4gt<CR>
nnoremap <Esc>5 5gt<CR>
nnoremap <Esc>6 6gt<CR>
nnoremap <Esc>7 7gt<CR>
nnoremap <Esc>8 8gt<CR>
nnoremap <Esc>9 9gt<CR>

filetype indent off

" change window title based on file opened
set title

" why on earth is this default 1000
set timeoutlen=50
