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
"
"""  Interface
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'nathanaelkane/vim-indent-guides'
"Theme
Plugin 'Distinguished'
Plugin 'flazz/vim-colorschemes'
"Plugin 'Taverius/vim-colorscheme-manager'
Plugin 'vim-misc'
Plugin 'vim-colorscheme-switcher'


"""" Syntax Check 
Plugin 'scrooloose/syntastic'

"""" Git stuff
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

"""" Rails stuff
"Plugin 'vim-ruby/vim-ruby'
"Plugin 'tpope/vim-rails'
"Plugin 'tpope/vim-endwise'
"Plugin 'tpope/vim-dispatch'

"Plugin 'skalnik/vim-vroom'

Plugin 'pangloss/vim-javascript'
"Plugin 'claco/jasmine.vim'
"Plugin 'glanotte/vim-jasmine'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'burnettk/vim-angular'
Plugin 'matthewsimo/angular-vim-snippets'
"Plugin 'groenewege/vim-less'

Plugin 'kchmck/vim-coffee-script'

Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'

""" WakaTime integration
Plugin 'wakatime/vim-wakatime'

""" SnipMate
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'

"" plugin from http://vim-scripts.org/vim/scripts.html
"Plugin 'SuperTab'
"Plugin 'unite.vim'
"Plugin 'Shougo/vimproc.vim'

""" You Complete Me
Plugin 'Valloric/YouCompleteMe'

""" Tern integration
Plugin 'marijnh/tern_for_vim'
Plugin 'othree/tern_for_vim_coffee'
""" UltiSnips Engine
Plugin 'SirVer/ultisnips'
""" UltiSnips Snippets
Plugin 'honza/vim-snippets'
"
"Domykanie nawiasów
Plugin 'Raimondi/delimitMate'

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
"filetype plugin on
"filetype on 
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

color lizard256 
set guifont='Monaco\ for\ Powerline':h10:b
syntax on

autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:syntastic_ruby_checkers = ['mri', 'rubocop']

set laststatus=2
set number
set mouse=a
set noswapfile

"####### Endless Undo ########
set undofile
set undodir=/home/kalinq/.vimundo/

"noremap <c-k> :call feedkeys( line('.')==1 ? '' : 'ddkP' )<CR>
"noremap <c-j> ddp

"nnoremap <c-s> :w<CR> 
"nnoremap <C-H> :bprev<CR>
"nnoremap <C-L> :bnext<CR>

"nnoremap <C-S-j> :m+<CR>==
"nnoremap <c-s-k> :m-2<CR>==
"inoremap <c-s-j> <Esc>:m+<CR>==gi
"inoremap <c-s-k> <Esc>:m-2<CR>==gi
"vnoremap <c-s-j> :m'>+<CR>gv=gv
"vnoremap <c-s-k> :m-2<CR>gv=gv

nnoremap <F3> :set invpaste paste?<CR>
nmap <F4> **/<cfile><cr>

let g:used_javascript_libs = 'underscore,angularjs,angularui,jasmine,jquery'

"######## Air line #############
"let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "badwolf"
let g:airline_powerline_fonts = 1
set hidden

"############ NerdTree ###########
""autorun
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
""
""autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
""
""toggle
map <C-n> :NERDTreeToggle<CR>

"########### GitGuttter #########
highlight clear SignColumn
set updatetime=750

"############ Unite ##############
"nnoremap <C-u> :Unite file_rec/async<cr>

"########### Kolorowy Kursor ############
"" Enable CursorLine
"set cursorline

"" Default Colors for CursorLine
"highlight  CursorLine ctermbg=None ctermfg=None

"" Change Color when entering Insert Mode
"autocmd InsertEnter * highlight  CursorLine ctermbg=Black ctermfg=None

"" Revert Color to default when leaving Insert Mode

"############# UltiSnips ##############
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>" 

"############ Ctrl-P ###########
let g:ctrlp_clear_cache_on_exit=0


"########## intend colors #############
let g:indent_guides_guide_size = 1

