" vim: set sw=4 ts=4 sts=4 background=dark
"         ___           ___     
"        /\__\         /\__\    
"       /:/  /        /::|  |   
"      /:/  /        /:|:|  |   
"     /:/__/  ___   /:/|:|  |__ 
"     |:|  | /\__\ /:/ |:| /\__\
"     |:|  |/:/  / \/__|:|/:/  /
"     |:|__/:/  /      |:/:/  / 
"      \::::/__/       |::/  /  
"       ~~~~           /:/  /   
"                      \/__/    


set nocompatible
syntax off

call pathogen#infect('bundle/{}')
call pathogen#helptags()

syntax on
filetype plugin indent on

set shortmess+=filmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore

set background=light
colorscheme solarized

set mouse=a
set mousehide
set encoding=utf-8
scriptencoding utf-8

set nu
set hlsearch
set nowrap
set autoindent
set expandtab
set splitright
set splitbelow
set pastetoggle=<F12>
set winminheight=0

set history=1000
set spell
set hidden

set tabstop=4
set shiftwidth=4
set softtabstop=4

" set backup
set showmode

set tabpagemax=15
set cursorline

highlight CursorLine cterm=NONE ctermbg=darkred ctermfg=white
highlight CursorColumn cterm=NONE ctermbg=darkred ctermfg=white
highlight clear SignColumn
highlight clear LineNr

set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd

" status line
set laststatus=2
"set statusline=%<%f
"set statusline+=\ %w%h%m%r
"set statusline+=\ [%{&ff}/%Y]
"set statusline+=\ [%{getcwd()}]
"set statusline+=%=%-14.(%l,%c%V%)\ %p%%

set backspace=indent,eol,start
set linespace=0
set showmatch
set incsearch
set ignorecase
set smartcase
set wildmode=list:longest,full
set listchars=tab:❘-,trail:·,extends:»,precedes:«,nbsp:×
set list

" convert spaces to tabs when reading file
autocmd! bufreadpost * set noexpandtab | retab! 4
" convert tabs to spaces before writing file
autocmd! bufwritepre * set expandtab | retab! 4
" convert spaces to tabs after writing file (to show guides again)
autocmd! bufwritepost * set noexpandtab | retab! 4

cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

vnoremap < <gv
vnoremap > >gv
vnoremap . :normal .<CR>

set tags=./tags;/,~/.vimtags

nmap <silent> <C-E> :NERDTreeToggle<CR>
nmap <silent> <S-F9> :TagbarToggle<CR>
nmap <silent> <S-F10> :UndoTreeToggle<CR>

autocmd Filetype * setlocal omnifunc=syntaxcomplete#Complete
autocmd FileType cpp setlocal omnifunc=omni#cpp#complete#Main
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType java setlocal makeprg=ant\ debug

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set completeopt=menu,menuone

let OmniCpp_MayCompleteDot=1        " autocomplete with .
let OmniCpp_MayCompleteArrow=1      " autocomplete with ->
let OmniCpp_MayCompleteScope=1      " autocomplete with ::
let OmniCpp_SelectFirstItem=2       " select first item (but don't insert)
let OmniCpp_NamespaceSearch=2       " search namespaces in this and included files
let OmniCpp_ShowPrototypeInAbbr=1   " show function prototype (i.e. parameters) in popup window
let OmniCpp_LocalSearchDecl=1       " don't require special style of function opening braces

nmap <F2> :w<CR>
nmap <F4> :q<CR>
nmap <silent> <S-F5> :make<CR>
nmap <silent> <C-F6> :make clean all<CR>

let g:airline_powerline_fonts=1

if has("gui_running")
    set guifont=DejaVu\ Sans\ Mono\ Powerline:h9
endif

if has("persistent_undo")
    set undodir='~/.undodir/'
    set undofile
endif

" my person configuration
"set tags+=~/.vim/tags/cpp
"set tags+=~/.vim/tags/gl
"set tags+=~/.vim/tags/glm
"set tags+=~/.vim/tags/sdl2
"
"map <F8> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q --exclude=Makefile -f ~/Projects/voc/tags/tags ~/Projects/voc/src<CR>
"set tags+=~/Projects/voc/tags/tags
"nmap <silent> <F6> :!~/Projects/voc/src/build/bin/voc<CR>
"nmap <F4> :e %<.h<CR>
"nmap <F3> :e %<.cpp<CR>

