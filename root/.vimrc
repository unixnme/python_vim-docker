set nocompatible              " required
set encoding=utf-8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'alvan/vim-closetag'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)


syntax on
filetype plugin indent on
set nu
set foldlevel=99

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hlsearch

set background=dark
set wildmode=longest,list,full
set wildmenu

nnoremap <F2> :tabp<CR>
nnoremap <F3> :tabn<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ;2 :tabp<CR>
nnoremap ;3 :tabn<CR>
nnoremap J <nop>

nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>
color desert

set backspace=2
set linebreak
set wrap

set statusline=%F%m%r%<\ %=%l,%v\ [%L]\ %p%%
set laststatus=2

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_python_binary_path = 'python'
let g:ycm_goto_buffer_command = 'new-tab'

nnoremap <C-P> :YcmCompleter GoTo<CR>
set cursorline
