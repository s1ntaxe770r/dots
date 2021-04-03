call plug#begin()
Plug 'Vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Bracket auto pair because i value my sainity
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'

"" colorschemes
Plug 'drewtempelmeyer/palenight.vim'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'

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
autocmd vimenter * colorscheme palenight 
autocmd vimenter * AirlineTheme palenight

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


" COC-stuf	
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction


"Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Airline 
let g:airline_powerline_fonts = 1

call plug#end()
