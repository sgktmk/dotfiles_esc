" ---------------------------------------
"  Encoding
" ---------------------------------------
set encoding=utf8
set fileencodings=utf-8,euc-jp,cp932,sjis
set fileencoding=utf8
set fileformats=unix,dos,mac
set termencoding=utf8
set ambiwidth=double
set nobomb
scriptencoding utf-8

set noswapfile
set nobackup
set noundofile
set clipboard=unnamed
set belloff=all
set title

" ---------------------------------------
"  Complement 
" ---------------------------------------
inoremap {<Enter> {}<Left>
inoremap [<Enter> []<Left>
inoremap (<Enter> ()<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" ---------------------------------------
"  Split 
" ---------------------------------------
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

" ---------------------------------------
"  Tab
" ---------------------------------------
set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

" ---------------------------------------
"  Search
" ---------------------------------------
set incsearch
set ignorecase
set smartcase
set hlsearch

" ---------------------------------------
"  Cursor
" ---------------------------------------
set whichwrap=b,s,h,l,<,>,[,],~
set number
set rnu
set cursorline
highlight CursorLine term=reverse ctermbg=8 guibg=Grey40
set cursorcolumn
set backspace=indent,eol,start
set showmatch

" ---------------------------------------
"  Command
" ---------------------------------------
set wildmenu
set history=5000

" netrwは常にtree view
let g:netrw_liststyle = 3
" 'v'でファイルを開くときは右側に開く。(デフォルトが左側なので入れ替え)
let g:netrw_altv = 1
" 'o'でファイルを開くときは下側に開く。(デフォルトが上側なので入れ替え)
let g:netrw_alto = 1
