set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" NERDTree: The NERD tree allows you to explore your filesystem and to open files and
" directories. It presents the filesystem in the form of a tree.
" command :NERDTree
Plugin 'https://github.com/scrooloose/nerdtree'

" Airline: Improved GUI for vim.
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Solarized: Improved color theme.
Plugin 'https://github.com/altercation/vim-colors-solarized.git'

" Syntastic: Syntax checking hacks for vim.
Plugin 'scrooloose/syntastic'

" DelimitMate: automatically ends brackets, parenthesis, quotes.
Plugin 'raimondi/delimitmate'

" TComment: comments and uncomment lines easily.
Plugin 'tomtom/tcomment_vim'

" Fugitive: the best git-wrapper ever made.
Plugin 'tpope/vim-fugitive'

" GitGutter: a vim plugin that shows git differences.
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
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
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" Set vim-airline variable to always active.
set laststatus=2
let g:airline_theme='wombat'

" Custom: My custom changes:
" Hides buffers instead of closing them. Allowing me to open new files without
" saving. Also saves the undo-buffer of my previous file.
set hidden
" Don't wrap lines:
set nowrap
" a tab is four spaces:
set tabstop=4
" always show line numbers
set number
" set the color of the line number.
hi LineNr ctermfg=grey
" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Always set autoindenting on
set autoindent
" Copy previous indentation on autoindent
set copyindent
" number of spaces to use for autoindenting
set shiftwidth=4
" use multiple of shiftwidth when indenting with < and >
set shiftround
" insert tab on the start of a line according to shiftwidth, not tapstop.
set smarttab

" Ignore case when searching
set ignorecase
" ignore case if search pattern is lowercase, case-sensitive otherwise.
set smartcase
" hightlight search terms
set hlsearch
" show search matches as you type
set incsearch

" Syntactic settings.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers=['jshint']

" Activate pastebuffer using F2
set pastetoggle=<F2>

set mouse=a
fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

	if &mouse == ""
        let &mouse = s:old_mouse
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        echo "Mouse is for terminal"
    endif
endfunction
