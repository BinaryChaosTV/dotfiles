" ------------------------------ VIMRC ------------------------------

" ------------------------------ PATHOGEN ------------------------------
execute pathogen#infect()

" ------------------------------ VISUAL ------------------------------

syntax enable

" Turn on line numbers
set number 

" Number of characters on a single line
set textwidth=72

" Highlights the search
set hls
set incsearch
set linebreak

" Makes the background light/dark
" set background=light
set background=dark

" Set the colorscheme
" colorscheme slate
colorscheme solarized


" ------------------------------ NAVIGATION ------------------------------

" Automatically indent new lines
set autoindent

" Indent when you write code
set smartindent
set shiftwidth=2
set smarttab

" automatically write files when changing when multiple files open
set autowrite

" show command and insert mode
set showmode

" Amount of spaces when you press TAB
set tabstop=2

" Erases all white spaces together
set softtabstop=2

" Ignore case sensitive searches
set ic

" replace tabs with spaces automatically
set expandtab

" disable relative line numbers, remove no to sample it
set norelativenumber

" ------------------------------ KEY REMAPS ------------------------------

" No arrow keys
" noremap <up> :echoerr "Umm, use k instead"<CR>
" noremap <down> :echoerr "Umm, use j instead"<CR>
" noremap <left> :echoerr "Umm, use h instead"<CR>
" noremap <right> :echoerr "Umm, use l instead"<CR>
" inoremap <up> <NOP>
" inoremap <down> <NOP> 
" inoremap <left> <NOP> 
" inoremap <right> <NOP> 

" better use of arrow keys, number increment/decrement
" nnoremap <up> <C-a>
" nnoremap <down> <C-x>

" Better page down and page up
" noremap <C-n> <C-d>
" noremap <C-p> <C-b>



" ------------------------------ VIM FILE STRUCTURE ------------------------------

set nobackup
set noswapfile
set nowritebackup

set icon

set viminfo='20,<1000,s1000 "Prevents truncated yanks, deletes, etc.

" File types
au bufnewfile,bufRead bashconfig set filetype=sh
filetype plugin indent on











