set nu

" some tab settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set winminheight=0 " for window rolodexing

" set some backup stuff
set backupdir=~/.vimbackups//
set directory=~/.vimbackups//
set undodir=~/.vimbackups//

" persisent undo
set undofile

" spell language
set spelllang=en_us

" search settings
set hlsearch
set incsearch

" Key Mappings {{{
let mapleader=";"

" quick escape
ino jj <Esc>
cno jj <Esc>

" for window rolodexing
nno <Leader>j <C-w>j<C-w>_
nno <Leader>k <C-w>k<C-w>_

" remove highlighted searches
nno <Leader>n :noh<CR>

" spellmode
nno <silent> <Leader>s :setlocal spell!<CR>

" highlight cursor line in current window
au BufEnter * setlocal cursorline " hack so that vim startup and splitting still highlights
au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

" Be sure to keep this at the bottom
execute pathogen#infect()
