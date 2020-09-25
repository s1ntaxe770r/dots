call plug#begin()
Plug 'Vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Bracket auto pair because i value my sainity
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'



"" colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

"" go plugins
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"       
""   Automatically get signature/type info for object under cursor 
let g:go_auto_type_info = 1             
au filetype go inoremap <buffer> . .<C-x><C-o>



"" generic vim stuff
set termguicolors
filetype plugin indent on
set background=dark
autocmd vimenter * colorscheme gruvbox
set encoding=UTF-8
filetype plugin indent on
set t_co=256
syntax enable
syntax on
set number
set exrc
set noswapfile
set encoding=utf-8
au BufNewFile,BufRead *.py
\ set expandtab       |" replace tabs with spaces
\ set autoindent      |" copy indent when starting a new line
\ set tabstop=4
\ set softtabstop=4
\ set shiftwidth=4





call plug#end()
