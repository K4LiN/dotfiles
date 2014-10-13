set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-ruby/vim-ruby'
Plugin 'skalnik/vim-vroom'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
 Plugin 'SuperTab'
 Plugin 'PA_ruby_ri'
 Plugin 'snipMate'
 Plugin 'AutoComplPop'
 Plugin 'minibufexpl.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
filetype plugin on
filetype on 
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
"                     :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"                     auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

color xoria256
set guifont=Monaco:h9:b
syntax on

set completefunc=syntaxcomplete#Complete
set omnifunc=syntaxcomplete#Complete
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:syntastic_ruby_checkers = ['mri', 'rubocop']

set laststatus=2
set number

"noremap <c-k> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
"noremap <c-j> ddp

nnoremap <c-j> :m+<CR>==
nnoremap <c-k> :m-2<CR>==
inoremap <c-j> <Esc>:m+<CR>==gi
inoremap <c-k> <Esc>:m-2<CR>==gi
vnoremap <c-j> :m'>+<CR>gv=gv
vnoremap <c-k> :m-2<CR>gv=gv
nnoremap <F4> :set invpaste paste?<CR>
