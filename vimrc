""""""""""""""""""""""""""""
" Maintainer:
"	Sandor Trombitas
"
" Version:
"	0.0.1
""""""""""""""""""""""""""""


""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""
" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype Plugins
filetype plugin on
filetype indent on

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'joshdick/onedark.vim'
Plugin 'docunext/closetag.vim'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'eslint/eslint'
Plugin 'w0rp/ale'

call vundle#end()            " required

syntax on
colorscheme onedark

set number
set cursorline
set autoread
set hlsearch
set autoread
set noswapfile
set nowb
set nobackup

set smartcase
set showmatch
set mat=2
set laststatus=2

set list

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"vim-jsx configuration
let g:jsx_ext_required = 0
" NERDTree configuration
" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
let g:NERDTreeChDirMode=2
let NERDTreeShowHidden=1
" CtrlP configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'Et'

" Ignore using vim
set wildignore+=*\\node_modules\\*

" Ignore using CtrlP
let g:ctrlp_custom_ignore = {
  \ 'dir':  'node_modules',
  \ }

" Emmet-vim configuration
let g:user_emmet_leader_key='<C-I>'

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1

