call plug#begin('~/.vim/plugged')
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

set shiftwidth=2                       " shift width
set tabstop=8                          " actual indentation width
set softtabstop=2                      " soft indentation width
set expandtab                          " expand tabs, use spaces
set textwidth=1024                     " something large enough
set shell=zsh                          " use zsh for shell
set shortmess=I                        " disable vim intro, sorry bram
set backspace=eol,start,indent         " set backspace
set whichwrap+=<,>,h,l                 " wrap
set timeoutlen=250                     " timeout length
set scrolloff=4                        " number of lines margin for cursor
set matchtime=2                        " blink time
set textwidth=0                        " maximum text width
set linebreak                          " enable linebreaks
set cursorline                         " highlight current position
set wildmenu                           " wildmenu command completion
set wildmode=longest:full,full         " tab: list, tabtab:
set smarttab                           " enable smart tabs
set autoindent                         " automatic indentation
set wrap                               " wrap long lines
set hidden                             " buffer is hidden when abandoned
set noerrorbells                       " no error bell
set novisualbell                       " no visual error bell
set showmatch                          " highlight matching bracket
set ignorecase                         " ignore case when searching
set smartcase                          " enable smart cases
set hlsearch                           " highlight search results
set incsearch                          " continuous real-time search results
set magic                              " turn on magic for regexp
set number                             " add line numbers
set numberwidth=5                      " ought to be enough for everybody
set autoread                           " autoread files changed outside vim
set nobackup                           " turn off backup
set nowb                               " no backup before writing
set noswapfile                         " no swap file
set laststatus=2                       " last window always has a status
set nofoldenable                       " disable folding, i don't use it
set foldcolumn=0                       " hide the fold column
set colorcolumn=0                      " hide the vertical 80 char ruler
set modelines=0                        " ignore modeline
set encoding=utf-8                     " utf-8 encoding
set langmenu=en                        " use english
set cinkeys-=0#                        " allow indenting #pragma lines
set guicursor=i-n-v-c-ci:block-cursor  " always use a block cursor
set formatoptions+=ro                  " continue comments on the next line

syntax enable
filetype plugin indent on

" wildmenu options
set wildignore=*.o,*~,*.pyc,.git\*,.hg\*,.svn\*

" remember cursor position
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif
autocmd BufLeave * let b:winview = winsaveview()
autocmd BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif

autocmd BufNewFile,BufRead *.txt set filetype=markdown | set syntax=markdown

augroup ledger
  autocmd FileType * set colorcolumn=0
  autocmd BufNewFile,BufRead *.ledger set filetype=ledger
  autocmd FileType ledger set colorcolumn=50

  imap <C-F> <Esc>:exe "normal a" . repeat(" ", 71 - strwidth(getline(".")))<cr>A

  autocmd FileType ledger syntax match
    \ ledgerDebit "[0-9\.]\+ [A-Z]\+$" |
    \ highlight ledgerDebit cterm=NONE ctermfg=199

  autocmd FileType ledger syntax match
    \ ledgerCredit "-[0-9\.]\+ [A-Z]\+$" |
    \ highlight ledgerCredit cterm=NONE ctermfg=119

  autocmd FileType ledger syntax match
    \ ledgerComment "^#.*$" |
    \ highlight link ledgerComment Comment

  autocmd FileType ledger syntax match
    \ ledgerDate "^[0-9]\{2}-[A-Za-z]\{3}-[0-9]\{4}" |
    \ highlight ledgerDate cterm=NONE ctermfg=128

  autocmd FileType ledger syntax match
    \ ledgerIncome "  Income:[A-Za-z0-9:]*" |
    \ highlight ledgerIncome cterm=NONE ctermfg=199

  autocmd FileType ledger syntax match
    \ ledgerExpenses "  Expenses:[A-Za-z0-9:]*" |
    \ highlight ledgerExpenses cterm=NONE ctermfg=219

  autocmd FileType ledger syntax match
    \ ledgerLiabilities "  Liabilities:[A-Za-z0-9:]*" |
    \ highlight ledgerLiabilities cterm=NONE ctermfg=118

  autocmd FileType ledger syntax match
    \ ledgerAssets "  Assets:[A-Za-z0-9:]*" |
    \ highlight ledgerAssets cterm=NONE ctermfg=169
augroup END

" statusline
set statusline=\ %<#%02n\ %f\ %=%{&filetype!=#''?&filetype:'none'}%m\ %l:%c/%L\ 
set laststatus=2

imap jk <Esc>
nnoremap <space> i

" treat long lines as break lines
nnoremap j gj
nnoremap k gk

" switch to the most recent buffer
nnoremap ,. <C-^>

" TeX compile: use a clean build each time because TeX is weird like that
nnoremap ,d :!rm *.aux; pdflatex % && bibtex %:r && pdflatex % && pdflatex %<cr>
nmap ,c ,d,d

" clear search highlight
nnoremap <silent> ,, :noh<cr>

" search for visual selection
vnoremap // y/<C-R>"<CR>

" basic theming: these colour numbers might not make sense unless you have the
" appropriate terminal colours defined
highlight Cursor        cterm=NONE ctermbg=200
highlight Visual        cterm=NONE ctermbg=112
highlight CursorLine    cterm=NONE ctermbg=15
highlight StatusLine    cterm=NONE ctermfg=115
highlight Comment       cterm=NONE ctermfg=106
highlight LineNr        cterm=NONE ctermfg=106
highlight CursorLineNr  cterm=NONE ctermfg=228
highlight IncSearch     cterm=NONE ctermbg=193 ctermfg=199
highlight Search        cterm=NONE ctermbg=193 ctermfg=199
highlight WildMenu      cterm=NONE ctermbg=193 ctermfg=199
highlight Constant      cterm=NONE ctermfg=10
highlight Identifier    cterm=NONE ctermfg=5
highlight Function      cterm=NONE ctermfg=4
highlight Statement     cterm=NONE ctermfg=4
highlight Preproc       cterm=NONE ctermfg=6
highlight Type          cterm=NONE ctermfg=1
highlight Special       cterm=NONE ctermfg=0
highlight Todo          cterm=NONE ctermbg=214
highlight MatchParen    cterm=NONE ctermbg=114
highlight ColorColumn   cterm=NONE ctermbg=222
