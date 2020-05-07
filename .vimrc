

" Vim UI

set number " Turn on line numbers 
set background=dark " Makes the background dark
set textwidth=73 " Number of characters on a single line
syntax enable

colorscheme slate
" colorscheme pablo

" Vim navigation

set tabstop=2 " Amount of spaces when you press TAB
set softtabstop=2 " Erases all white spaces together
set smartindent " Indent when you write code in Vim
set autoindent

" No arrow keys
noremap <up> :echoerr "Umm, use k instead"<CR>
noremap <down> :echoerr "Umm, use j instead"<CR>
noremap <left> :echoerr "Umm, use h instead"<CR>
noremap <right> :echoerr "Umm, use l instead"<CR>
inoremap <up> <NOP>
inoremap <down> <NOP> 
inoremap <left> <NOP> 
inoremap <right> <NOP> 

" Vim File Structure

set nobackup
set noswapfile
set nowritebackup
set viminfo='20,<1000,s1000 "Prevents truncated yanks, deletes, etc.
set expandtab " Turns tabs into white spaces


















