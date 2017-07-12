syntax on
colorscheme badwolf
set t_ut=

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set smartindent
set autoindent
set binary
filetype plugin indent on

set number
set cursorline
set wildmenu
set showmatch

set incsearch
set hlsearch

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

set nobackup
set nowb
set noswapfile
" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%
" show tab bar always

set splitbelow
set splitright
set showtabline=2

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

augroup filetypedetect
    au BufRead,BufNewFile *.mjs setfiletype javascript
augroup END
" don't highlight html stupid
highlight htmlItalic gui=italic guifg=#000000 ctermfg=214
