" vim: set sw=4 ts=4 sts=4 background=dark

set nocompatible
syntax off

call pathogen#incubate()
call pathogen#helptags()

syntax on
filetype plugin indent on

set shortmess+=filmnrxoOtT
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore

autocmd Filetype * setlocal omnifunc=syntaxcomplete#Complete
set completeopt=menu,preview,longest

set background=dark
set mouse=a
set mousehide
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
highlight clear SignColumn
highlight clear LineNr

set ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd

set laststatus=2
set statusline=%<%f\
set statusline+=%w%h%m%r
set statusline+=\ [%{&ff}/%Y]
set statusline+=\ [%{getcwd()}]
set statusline+=%=%-14.(%l,%c%V%)\ %p%%

set backspace=indent,eol,start
set linespace=0
set showmatch
set incsearch
set ignorecase
set smartcase
set wildmode=list:longest,full
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

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
nmap <silent> <F9> :TagbarToggle<CR>

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

