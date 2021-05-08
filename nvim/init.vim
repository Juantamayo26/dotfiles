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
  " lsp
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/nvim-compe'
  Plug 'simrat39/symbols-outline.nvim'
  "Plug 'nvim-lua/completion-nvim'
  " Syntax support
  Plug 'sheerun/vim-polyglot'
  " Appareance 
  Plug 'gruvbox-community/gruvbox'
  Plug 'flazz/vim-colorschemes'
  Plug 'chriskempson/base16-vim'
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
  Plug 'tweekmonster/gofmt.vim'


call plug#end()

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

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>

vnoremap <leader>p "_dP
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG
nnoremap <leader>d "_d
vnoremap <leader>d "_d

inoremap <C-c> <esc>
