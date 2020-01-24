"      _
"     (_)
"  __   __ _  _ __ ___   _ __  ___
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__
" (_)\_/  |_||_| |_| |_||_|   \___|

" Plugins
if !empty(glob("~/.vim/autoload/plug.vim"))
  call plug#begin('~/.vim/plugged')
    " Plugins
    Plug 'airblade/vim-gitgutter'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'bagrat/vim-buffet'
  call plug#end()
endif

" Behavior
  set nocompatible
  if !has('gui_running')
    set t_Co=256
  endif
  set tabstop=2
  set softtabstop=2
	set expandtab
  set shiftwidth=2
  set ttyfast
  set mouse=a
  set autoindent
  set smartindent
  set modeline
  set modelines=5
  set noswapfile
  set undofile
  set undodir=~/.vim/undo

" Appearance
  set nowrap
  syntax on
  colors default
  set nu relativenumber
  set laststatus=2 " Ensures lightline is working
  "set background=dark
  highlight Comment ctermfg=DarkGreen
  highlight LineNr ctermfg=DarkGrey
  set listchars=tab:\ \ ,nbsp:_,trail:.,extends:<,precedes:>
  set list
  set hlsearch

" Key bindings
  " Normal mode
    nnoremap <C-Up> <C-w><Up>
    nnoremap <C-Down> <C-w><Down>
    nnoremap <C-Left> <C-w><Left>
    nnoremap <C-Right> <C-w><Right>
    nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
  " Insert mode
    inoremap <C-Up> <C-o>db
    inoremap <C-Down> <C-o>dw

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

" Filetype overrides
  autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2

" gVim settings
  if has("gui_running")
    " Set colors and font
    set t_Co=256
    colorscheme torte
    set background=dark
    highlight Comment guifg=DarkGreen
    highlight LineNr guifg=DarkGrey
    set guifont=Consolas:h16
    " Disable UI elements
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    set guioptions-=r  "remove right-hand scroll bar
    set guioptions-=L  "remove left-hand scroll bar
  endif
