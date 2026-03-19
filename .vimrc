syntax on
filetype plugin indent on

set background=dark
set showmatch

set ignorecase
set smartcase
set incsearch
set hlsearch
nnoremap <CR> :nohlsearch<CR><CR>

set hidden

set number
set relativenumber
set cursorline

set tabstop=4
set shiftwidth=4
set smartindent

set foldenable
set foldmethod=syntax
set foldcolumn=0
setlocal foldlevel=1
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
