set path+=**

" Nice menu when typing `:find *.py`
set wildmode=longest,list,full
set wildmenu
" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/* 
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

source $HOME/.config/nvim/plugin/sets.vim

call plug#begin('~/.config/nvim/plugged')
  " Appareance 
  Plug 'gruvbox-community/gruvbox'
  " Icons
  Plug 'ryanoasis/vim-devicons'
  " Ranger
  Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
  " Templates
  Plug 'tibabit/vim-templates'
  " File explorer
  Plug 'scrooloose/NERDTree'    
  " telescope
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-telescope/telescope-fzy-native.nvim'
  " fzf
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'
  " Indent guides
  Plug 'Yggdroot/indentLine' 

call plug#end()

colorscheme gruvbox
" highlight Normal guibg=none
lua require("juantamayo")
let g:mapleader = "\<Space>"

" TAB in general mode will move to next buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go to prev buffer
nnoremap <S-TAB> :bprevious<CR>
" Close current buffer
nnoremap <C-b> :bd<CR>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>
" IdentLine
let g:indentLine_setColors = 239
let g:indentLine_char = '¦'
