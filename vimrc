syntax on
set number
set ruler
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set autoindent
set smartindent
set backspace=indent,eol,start
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

filetype indent on
filetype plugin indent on

set hidden

" Automatically add closing braces
inoremap {<CR> {<CR>}<Esc>ko
inoremap [<CR> [<CR>]<Esc>ko

" Plugins
call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

" Look and feel configs
colorscheme gruvbox
set background=dark

" NERDTree
let NERDTreeShowHidden=1

" Vim-go
let g:go_highlight_types=1
let g:go_highlight_fields=1
let g:go_highlight_functions=1
let g:go_highlight_function_calls=1
let g:go_highlight_operators=1
let g:go_highlight_extra_types=1
let g:go_highlight_build_contraints=1
let g:go_highlight_generate_tags=1
let g:lsp_diagnostics_echo_cursor=1
