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

filetype plugin indent off

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

"commands for setting tab length
command -nargs=1 Spacetab set shiftwidth=<args> tabstop=<args> expandtab smarttab
command Tabtab set shiftwidth=8 tabstop=8 noexpandtab nosmarttab
