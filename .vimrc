set nocompatible              " be iMproved, required
filetype off                  " required
set showtabline=2
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'krzysztofosuch/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'leafgarland/typescript-vim'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on 
nnoremap <C-n> :NERDTreeFind<CR>
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:-
nnoremap <C-l> :set list!<CR>:set number!<CR> 
nnoremap <C-h> :set hlsearch!<CR>
command InsertPdb :normal! Oimport pdb;pdb.set_trace()<ESC>
command InsertPry :normal! Obinding.pry<ESC>
command Dbg :InsertPdb
set expandtab
set shiftwidth=2
set tabstop=2
autocmd BufWritePre *.rb %s/\s\+$//e
autocmd BufWritePre *.haml %s/\s\+$//e
autocmd BufWritePre *.yml %s/\s\+$//e
autocmd BufWritePre *spec.rb %s`\(end\n\)\( *context.*\)`\1\r\2`e
autocmd BufWritePre *spec.rb %s`\(end\n\)\( *it.*\)`\1\r\2`e

set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.git
let NERDTreeRespectWildIgnore=1

source ~/.vim/scripts.py
