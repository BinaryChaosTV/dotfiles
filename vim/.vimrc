" ------------------------------ VIMRC ------------------------------

" ------------------------------ ZETTELKASTEN -----------------------
let g:zettelkasten = $ZETTELKASTEN
command -nargs=1 NewZettel :execute ":e" zettelkasten . strftime("%Y%m%d%H%M") . "-<args>.md"

fu! HandleFZF(file)
    let filename = fnameescape(fnamemodify(a:file, ":t"))
    let filename_wo_timestamp = fnameescape(fnamemodify(a:file, ":t:s/^[0-9]*-//"))
    let mdlink = "[ ".filename_wo_timestamp." ]( ".filename." )"
    put=mdlink
    let curfilename = fnameescape(expand("%:t"))
    let curfilename_wo_timestamp = fnameescape(fnamemodify(expand("%"), ":t:s/^[0-9]*-//"))
    let curmdlink = "[ ".curfilename_wo_timestamp." ]( ".curfilename." )"
    call writefile(add(readfile(filename), curmdlink), filename)
endfunction

command! -nargs=1 HandleFZF :call HandleFZF(<f-args>)

" ------------------------------ PLUGINS ----------------------------

call plug#begin()
Plug 'altercation/vim-colors-solarized'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" ------------------------------ VISUAL -----------------------------
set nocompatible
syntax on

" Turn on line numbers
set number 

" Disable Folding
set foldmethod=manual
set nofoldenable

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
set t_Co=256
colorscheme solarized

" ------------------------------ PANDOC -------------------------------

" ------------------------------ VARIABLES ----------------------------


let g:ackprg = 'ag --nogroup --nocolor --column'



" ------------------------------ NAVIGATION ---------------------------

" Automatically indent new lines
set autoindent

" Indent when you write code
set smartindent
"set shiftwidth=2
"set smarttab

" automatically write files when changing when multiple files open
set autowrite

" show command and insert mode
set showmode

" Amount of spaces when you press TAB
set tabstop=8

" Erases all white spaces together
set softtabstop=4

" Ignore case sensitive searches
set ic

" replace tabs with spaces automatically
set expandtab

" disable relative line numbers, remove no to sample it
set norelativenumber

" ------------------------------ KEY REMAPS ------------------------------

let mapleader=","
" Change background colour to Solarized
call togglebg#map("<F5>")

" ----- .vimrc navigation -----
" Open .vimrc in a split page
nnoremap <leader>ev :vsplit $MYVIMRC<cr>

" Reload .vimrc in current page.
nnoremap <leader>sv :source $MYVIMRC<cr>

" ----- Insert Mode -----
" Erase line 
inoremap <leader><c-d> <esc>ddi

" Make word UPPERCASE
inoremap <leader><c-u> <esc>viwUi

" Return to Normal Mode
inoremap jk <esc>

" No arrow keys
noremap <left> :echoerr "Umm, use h instead"<CR>
noremap <right> :echoerr "Umm, use l instead"<CR>
inoremap <up> <NOP>
inoremap <down> <NOP> 
inoremap <left> <NOP> 
inoremap <right> <NOP> 

" ----- Normal Mode -----
" Surround word in single/double quotes
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>ww<cr>
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>ww<cr>

" Go to beginning/end of current line
nnoremap <leader>H 0
nnoremap <leader>L $

" Go Up / Down Half a page

" Delete current line and move it down/above
nnoremap <leader>- ddp
nnoremap <leader>_ ddkP

" Make word UPPERCASE
nnoremap <leader><c-u> viwU

" ----- Visual Mode -----
vnoremap <leader>" <esc>`>a"<esc>`<i"<esc>`><esc>

" better use of arrow keys, move to window above, below, left, right
nnoremap <up> <C-w>k
nnoremap <down> <C-w>j
nnoremap <left> <C-w>h
nnoremap <right> <C-w>l

" Better page down and page up
" noremap <C-n> <C-d>
" noremap <C-p> <C-b>

" For accessing links
nnoremap <cr> <C-]>
nnoremap <Backspace> <C-O> 
nnoremap <C-[> :tag<cr>

" ---- ZETTELKASTEN -----
nnoremap <leader>nz :NewZettel<space>
nnoremap <buffer>hf :call fzf#run({'sink': 'HandleFZF', 'down': '25%'})<cr>
inoremap <buffer> <C-X><C-F> <esc>:call fzf#run({'sink': 'HandleFZF', 'down': '40%'})<CR>A

" ------------------------------ VIM FILE STRUCTURE ------------------------------

set nobackup
set noswapfile
set nowritebackup

set icon

set viminfo='20,<1000,s1000 "Prevents truncated yanks, deletes, etc.

" File types
filetype plugin on
