"          _                       
"         (_)                      
"  __   __ _  _ __ ___   _ __  ___ 
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__ 
" (_)\_/  |_||_| |_| |_||_|   \___|

" Plugins
call plug#begin('~/.vim/plugged')
    " Plugins
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'bagrat/vim-buffet'
call plug#end()

" Behavior
    set nocompatible
    if !has('gui_running')
        set t_Co=256
    endif
    set expandtab softtabstop=2 shiftwidth=2
    set ttyfast
    set mouse=a
    set autoindent

" Appearance
    syntax on
    set nu relativenumber
    set background=dark
    colors default
    highlight Comment ctermfg=DarkGreen
    " Ensure lightline is working
    set laststatus=2

" Key bindings
    " Normal mode
        nnoremap <C-Up> <C-w><Up>
        nnoremap <C-Down> <C-w><Down>
        nnoremap <C-Left> <C-w><Left>
        nnoremap <C-Right> <C-w><Right>
    " Insert mode

" Plugin settings
    " Goyo
        map <C-y> :Goyo<Return>
    " Limelight
        let g:limelight_conceal_ctermfg = 'gray'
        let g:limelight_conceal_ctermfg = 240
        let g:limelight_conceal_guifg = 'DarkGray'
        let g:limelight_conceal_guifg = '#777777'
        autocmd! User GoyoEnter Limelight
        autocmd! User GoyoLeave Limelight!
    " Lightline
        let g:lightline = {
            \ 'colorscheme': 'jellybeans',
            \ }

" Vim-only
    if !has('nvim')
        set ttymouse=xterm2
    endif

" NVim-only
    if has('nvim')
    endif

