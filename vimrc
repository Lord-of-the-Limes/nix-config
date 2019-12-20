" Vundle Stuff
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Plugin 'gmarik/vundle'                  " plugin manager
Plugin 'scrooloose/nerdtree.git'        " file tree viewer
Plugin 'itchyny/lightline.vim'          " redesigned statusline
Plugin 'Valloric/YouCompleteMe'         " automatic word completion
Plugin 'rstacruz/vim-closer'            " automatic brace and paren completion, but only after a <CR>
Plugin 'tpope/vim-endwise'              " automatic insertion of delimiting keywords (like '#endif')
Plugin 'rust-lang/rust.vim'             " syntax highlighting for rust
"Plugin 'drmingdrmer/vim-tabbar'         " Simple, stupid, and fast tab-bar for VIM
"Plugin 'jiangmiao/auto-pairs'           " automatic brace, quote, and paren completion
Plugin 'fxn/vim-monochrome'

" General Editing Configuration
syntax on				" enables syntax highlighting
colorscheme monochrome
filetype plugin indent on		" allows automatic detection of filetype
set nocompatible			" disables vi compatability features
set backspace=indent,eol,start		" let's the backspace key function as would be expected
set autoindent				" enables automatic indentation
"set expandtab				 " tabs are expanded to spaces
"set tabstop=4                           " length of inserted tabs
"set shiftwidth=4                        " length of auto-indented tabs
"set nowrap                              " text that extends past the edge of the window is not displayed on the next line
"set NoMatchParen                        " Do not highlight matching pairs of chars e.g., {}, '', etc.
set noshowmatch                         " Do not jump to highlight matching brackets
au FileType * set fo-=c                 " auto-wrap comments disabled
au FileType * set fo-=r                 " automatically add comment leader after hitting <Enter> disabled
au FileType * set fo-=o			        " automatically add comment leader after hitting 'o' or 'O' disabled
set scrolloff=8				            " keeps n lines visible above and below the cursor
set ruler				                " shows current cursor position in lower right corner
set relativenumber			            " shows relative line numbers along the left hand border
set number				                " shows actual line number on current line
set showcmd				                " shows imcomplete commands in lower right corner
set noerrorbells                        " disables error beeps
set visualbell                          " enables a visual indication of errors
set wildmenu                            " advanced tab completion
set foldmethod=syntax                   " fold lines based on defined syntax rules
set foldtext=getline(v:foldstart)       " the fold line shows the text of the first line in the folded section
set foldnestmax=2                       " sets the maximum nesting of 'indent' and 'syntax' folding
set foldlevelstart=99                   " no folds when opening a file
set fillchars="vert:|,fold: "           " change the default fillchar of folded lines to ' ' 
set splitright                          " opens new vertical splits to the right
set splitbelow                          " opens new horizontal splits below

" Plugin Specific Configuration
" youcompleteme
set completeopt-=preview                " disables showing extra information on tab complete
" lightline
set laststatus=2		                " mode 2 ensures the status line will always be shown
set noshowmode			                " disables status indicator in bottom right corner

" changed 'filename' to 'relativepath'
" and add 'modified' to the inactive statusline
let g:lightline = {
    \ 'active': {
        \ 'left': [ [ 'mode', 'paste' ],
        \           [ 'readonly', 'relativepath', 'modified' ] ]
    \ },
    \ 'inactive': {
        \ 'left': [ [ 'relativepath', 'modified' ] ]
    \   
    \ }
\}
