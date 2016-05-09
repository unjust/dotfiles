syntax on
colorscheme desert

set ts=4
set sts=4
set sw=4
set ai
set noexpandtab

set incsearch
set hlsearch
set ignorecase
set modeline

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1

filetype plugin on

nnoremap t :tabnext<CR>
nnoremap T :tabprev<CR>

let mapleader="_"
noremap <leader>i :set list!<cr>
set listchars=tab:▸\ ,eol:¬,trail:.,precedes:<,extends:>
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

au BufNewFile,BufRead *.py set expandtab
au BufNewFile,BufRead *.json set expandtab

