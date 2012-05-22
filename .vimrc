syntax enable
set rnu
set mouse=a
set ruler
set tabstop=2
set shiftwidth=2
set expandtab
set list
set lcs=tab:>-,eol:¬
set hlsearch
set autoindent
" Only do this part when compiled with support for autocommands
if has("autocmd")
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal g'\"" |
  \ endif
endif
