call pathogen#infect()

set nocompatible
set cf  
set clipboard+=unnamed
set autowrite 
set ruler 
set nu  
set textwidth=72
set wrap 
set timeoutlen=250 
set expandtab
set ts=2
set bs=2
set shiftwidth=2 
set incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set nocindent
set autoindent
set smarttab
set showmatch  
set novisualbell 
set noerrorbells 
set laststatus=2 
set hlsearch
set incsearch
set nobackup
set nowb
set noswapfile
set wildmode=list:longest
set hidden
set history=256
set autoread
set mouse=a
set mousehide
set so=7
set wildmenu
set ruler
set cmdheight=2
set hid
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set ignorecase
set hlsearch
set incsearch
set magic
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set listchars=tab:▸\ ,eol:¬
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


filetype plugin on
filetype indent on

syntax enable 

let g:rails_default_file='config/database.yml'
 
augroup myfiletypes
autocmd!
autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 et
autocmd FileType erlang set ai sw=4 sts=4 et
augroup END

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<CR>
map <leader>e :e! ~/.vimrc<CR>
map <leader>m :make %<CR>

autocmd! bufwritepost vimrc source ~/.vim_runtime/vimrc

compiler rubyunit
autocmd BufNewFile,BufRead *_spec.rb compiler rspec

map <space> /
map <c-space> ?
map <silent> <leader><CR> :noh<CR>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>bd :Bclose<CR>
map <leader>ba :1,300 bd!<CR>
map <right> :bn<CR>
map <left> :bp<CR>
map <leader>tn :tabnew<CR>
map <leader>te :tabedit
map <leader>tc :tabclose<CR>
map <leader>tm :tabmove
map <leader>cd :cd %:p:h<CR>
map <leader>aa :Align =><CR>
map <leader>n :NERDTree<CR>
nmap <leader>l :set list!<CR>

runtime macros/matchit.vim

try
  set switchbuf=usetab
  set stal=2
catch
endtry

set grepprg=ack
let g:ackprg="ack -H --nocolor --nogroup --column --ignore-dir=doc --type-set mustache=.mustache --type-add js=.jst --type-add js=.handlebars"

set background=dark
let g:solarized_termcolors=16
colorscheme cmeiklejohn-vividchalk

au WinLeave * set nocursorline
au WinEnter * set cursorline
set cursorline

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>a :Ack<SPACE>
nnoremap <leader>ft Vatzf
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
nnoremap <leader>v V`]
nnoremap <leader>j :JSHint %<CR>

let g:slime_target = 'tmux'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc$\|doc\|coverage',
  \ 'file': '\.exe$\|\.so$\|\.dat$\|\.beam$'
  \ }

" let g:acp_enableAtStartup = 0
" let g:neocomplcache_enable_at_startup = 0

" set colorcolumn=85 " Color column at 85
" set ttymouse=xterm2
" let g:ctrlp_use_caching = 0
" inoremap jj <ESC>

" Folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

autocmd FileType javascript setlocal foldmethod=marker foldmarker={,}
autocmd FileType ruby       setlocal foldmethod=indent

" Speed up scrolling with largest viewport size.
set ttyfast
set ttyscroll=3
set lazyredraw
 
" Relative line numbers in insert mode
" autocmd InsertEnter * :set number
" autocmd InsertLeave * :set relativenumber

set gfn=Monaco:h12
