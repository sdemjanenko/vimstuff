" sources:
" http://vi-improved.org/vimrc.html
" https://github.com/ibdknox/vimstuff/blob/master/.vimrc

set background=dark
syntax enable

set backspace=eol,start,indent
set whichwrap=h,l,~,[,]
set incsearch
set ruler
set autowrite
set backspace=indent,eol,start
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
set laststatus=2

set clipboard+=unnamed
set noerrorbells
set novisualbell
set scrolloff=10
set showcmd
set showmatch
set sidescrolloff=10
set listchars=tab:>-,trail:-

set expandtab
set formatoptions=rq
set ignorecase
set infercase
set nowrap
set shiftround
set smartcase

" try some new stuff
set mousehide
set foldenable
set foldmethod=indent
set foldlevelstart=1
set foldcolumn=2
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo
set nobackup
set writebackup
set hidden
set switchbuf=useopen
set history=1000
set undolevels=1000
set noswapfile
set wildmenu
set wildmode=list:full
set title
set cursorline

" Shortcut mappings {{{
" Since I never use the ; key anyway, this is a real optimization for almost
" all Vim commands, since we don't have to press that annoying Shift key that
" slows the commands down
nnoremap ; :

" Use Q for formatting the current paragraph (or visual selection)
vmap Q gq
nmap Q gqap

" Use the damn hjkl keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>


" Use ,d (or ,dd or ,dj or 20,dd) to delete a line without adding it to the
" yanked stack (also, in visual mode)
nmap <silent> <leader>d "_d
vmap <silent> <leader>d "_d

" Quick yanking to the end of the line
nmap Y y$


" Yank/paste to the OS clipboard with ,y and ,p
nmap <leader>y "+y
nmap <leader>Y "+yy
nmap <leader>p "+p
nmap <leader>P "+P

" Pull word under cursor into LHS of a substitute (for quick search and
" replace)
nmap <leader>z :%s#\<<C-r>=expand("<cword>")<CR>\>#


" Quickly get out of insert mode without your fingers having to leave the
" home row (either use 'jj' or 'jk')
inoremap jj <Esc>

" Strip all trailing whitespace from a file, using ,w
nnoremap <leader>W :%s/\s\+$//<CR>:let @/=''<CR>

set number
set ruler
set tabstop=2
set shiftwidth=2
set list
set hlsearch
set autoindent

"change backspace to be kill word
imap <D-BS> <C-W>

"remap shift tab to be omni-complete
inoremap <S-TAB> <C-X><C-O>

set pastetoggle=<F2>

"git mappings
nmap ,go :!git checkout
nmap ,gc :!git commit -a -s<CR>   
nmap ,gs :!git status<CR>
nmap ,ga :!git add .<CR>
nmap ,gi :!git init<CR>

" Only do this part when compiled with support for autocommands
if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif
