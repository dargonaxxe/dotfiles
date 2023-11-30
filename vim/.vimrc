set nocompatible
set number
set laststatus=2
set wrap
set encoding=utf-8

if filereadable(expand("~/.vimrc.plug"))
  source ~/.vimrc.plug
endif 

filetype on
filetype plugin on
filetype indent on

syntax on 

set cursorline 
set expandtab
set nobackup 
set incsearch
set ignorecase
set showcmd
set showmode
set showmatch
set hlsearch

" Enable auto completion menu after pressing TAB.
set wildmenu

" Make wildmenu behave like similar to Bash completion.
set wildmode=list:longest

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
colorscheme sorbet

" STATUS LINE ------------------------------------------------------------ {{{

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

set foldmethod=syntax
set foldlevel=99
