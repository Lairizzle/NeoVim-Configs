" NVIM Config by Keith Henderson
" Description: Setup for C++
" Author: Keith Henderson

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256
syntax on
" colorscheme wombat256
" turn line numbers on
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

"Custom Keybinds
nnoremap <S-t> :botright term<CR>
autocmd TermOpen * startinsert

"VIM-Plug
call plug#begin()

" List your plugins here
Plug 'tpope/vim-sensible'

"NERDTree File Explorer
Plug 'preservim/nerdtree'
"NERDTree Keybinds
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"COC-Clangd Intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
hi CocMenuSel ctermbg=109 guibg=#13354A

"Install linter
Plug 'dense-analysis/ale'

call plug#end()
