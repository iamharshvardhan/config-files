" LOCATION : ~/.config/nvim/init.vim
" DOWNLOAD VIM-PLUG :  sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

" Enable syntax highlighting
syntax on

" Display line numbers and relative line numbers for easier navigation
set number
set relativenumber

" Highlight search results and show the cursor position
set hlsearch
set ruler

" Set indentation to 4 spaces, with spaces instead of tabs
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Auto-pair brackets
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

" Auto-pair quotes
inoremap " ""<Esc>i
inoremap ' ''<Esc>i

" Use a space for indentation instead of a tab
set smarttab

" Enable mouse support for easier interaction
set mouse=a

" Highlight comments in a distinguishable color
highlight Comment ctermfg=green

" Ensure that text wrapping is set appropriately
set wrap
set linebreak
" set textwidth=80 " Optional: Limits text width to 80 characters

" Set the status line to show more useful information
set laststatus=2
set statusline=%F%m%r%h%w[%{&ff}]%y[%{&fileformat}]%p%%

" Enable auto-closing of brackets and quotes
set smartcase
set ignorecase

" Additional settings for a better experience
set clipboard=unnamedplus
set hidden

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

set encoding=UTF-8

call plug#end()

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-space> :TerminalSplit bash<CR>
nnoremap <C-space> :call ToggleTerminal()<CR>
nnoremap <C-m> :call AddVerticalTerminal()<CR>


function! ToggleTerminal()
  if exists("t:terminal_bufnr") && bufwinnr(t:terminal_bufnr) != -1
    " Terminal is open, close it
    exec t:terminal_bufnr . "bwipeout!"
    unlet t:terminal_bufnr
  else
    " Terminal is not open, open it at the bottom using Git Bash
    belowright split | terminal bash
    let t:terminal_bufnr = bufnr('%')
  endif
endfunction

function! AddVerticalTerminal()
  if exists("t:terminal_bufnr") && bufwinnr(t:terminal_bufnr) != -1
    " Add another terminal vertically at the bottom-right using Git Bash
    belowright vsplit | terminal bash
  else
    " If no terminal is open, open a vertical terminal at the bottom-right using Git Bash
    belowright vsplit | terminal bash
    let t:terminal_bufnr = bufnr('%')
  endif
endfunction

