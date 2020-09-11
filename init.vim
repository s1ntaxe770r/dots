call plug#begin()
Plug 'roxma/nvim-completion-manager'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'preservim/nerdtree'
Plug 'Vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Bracket auto pair because i value my sainity
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'bagrat/vim-buffet'



"" colorschemes
Plug 'drewtempelmeyer/palenight.vim'



"" go plugins
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"" Run goimports along gofmt on each save
let g:go_fmt_command = "goimports"       
""   Automatically get signature/type info for object under cursor 
let g:go_auto_type_info = 1             
au filetype go inoremap <buffer> . .<C-x><C-o>



"" generic vim stuff
filetype plugin indent on
set background=dark
colorscheme palenight
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
map <C-n> :NERDTreeToggle<CR>



"" launch nerdtree if no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"" vim buffet keymaps
nmap <leader>1 <Plug>BuffetSwitch(1)
nmap <leader>2 <Plug>BuffetSwitch(2)
nmap <leader>3 <Plug>BuffetSwitch(3)
nmap <leader>4 <Plug>BuffetSwitch(4)
nmap <leader>5 <Plug>BuffetSwitch(5)
nmap <leader>6 <Plug>BuffetSwitch(6)
nmap <leader>7 <Plug>BuffetSwitch(7)
nmap <leader>8 <Plug>BuffetSwitch(8)
nmap <leader>9 <Plug>BuffetSwitch(9)
nmap <leader>0 <Plug>BuffetSwitch(10)
noremap <Tab> :bn<CR>
noremap <S-Tab> :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

call plug#end()
