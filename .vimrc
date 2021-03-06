" The local .vimrc file.
execute pathogen#infect()

filetype plugin indent on
syntax on

colorscheme onedark

" Set lightline options.
set laststatus=2
set noshowmode
let g:lightline = {
	  \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" set the color of the line number.
highlight LineNr ctermfg=grey
highlight Comment ctermfg=45

" highlight CursorLine
set cursorline
highlight CursorLineNR ctermfg=white ctermbg=darkgrey

" Fix for the background graphical glitch (in windows 10, maybe elsewhere).
if &term =~ '256color'
" disable Background Color Erase (BCE) so that color schemes
" render properly when inside 256-color tmux and GNU screen.
" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
  set t_ut=
endif

" Fix to the delay when switching modes.
" Also removes delay when shift+O
set ttimeoutlen=0

" Activate pastebuffer using F2
set pastetoggle=<F2>

" Open NERDTree
map <F3> :NERDTree<CR>

" Custom: My custom changes:
" Hides buffers instead of closing them. Allowing me to open new files without
" saving. Also saves the undo-buffer of my previous file.
set hidden
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprev<CR>
" Don't wrap lines:
set nowrap
" a tab is four spaces:
set tabstop=4
" always show line numbers
set number
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

" set mouse=a
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

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
