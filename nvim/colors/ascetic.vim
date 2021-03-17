set background=dark
highlight clear
if exists("syntax_on")
    syntax reset
endif

let colors_name = "ascetic"

" see :help colorscheme and :help group-name 
" for documentation on the following 
hi Normal     ctermfg=LightGray ctermbg=Black guifg=White guibg=Black
hi Comment    cterm=NONE ctermfg=Gray
hi Constant   cterm=NONE ctermfg=White
hi Identifier cterm=NONE ctermfg=White
hi Function   cterm=NONE ctermfg=White
hi Statement  cterm=NONE ctermfg=White
hi PreProc    cterm=NONE ctermfg=White
hi Type	      cterm=NONE ctermfg=White
hi Special    cterm=NONE ctermfg=White
hi Delimiter  cterm=NONE ctermfg=White
