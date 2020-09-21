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
    " Plug 'jaxbot/semantic-highlight.vim'
    Plug 'vim-python/python-syntax'
    " Color schemes
    " Plug 'ludokng/vim-odyssey'
    Plug 'JaMo42/alabaster.vim'
  call plug#end()
endif

" Behavior
  set nocompatible
  if !has('gui_running')
    "set termguicolors
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
  set splitbelow
  set splitright
  filetype off
  " Open file at position left off
  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g`\"" | endif
  endif

" Appearance
  set nowrap
  syntax on
  set nu relativenumber
  set laststatus=2 " Ensures lightline is working
  set listchars=tab:\ \ ,nbsp:_,trail:.,extends:<,precedes:>
  set list
  set hlsearch
  " Colors
  "colorscheme peachpuff
  "set background=light
  "highlight Comment ctermfg=DarkGreen
  colors alabaster

" Key bindings
  nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
  if &term =~ "st"
  " st settings
    inoremap <ESC>[1;5D <C-Left>
    inoremap <ESC>[1;5C <C-Right>
    inoremap <ESC>[1;5A <C-o>db
    inoremap <ESC>[1;5B <C-o>dw
    nnoremap <ESC>[1;5D <C-w><Left>
    nnoremap <ESC>[1;5C <C-w><Right>
    nnoremap <ESC>[1;5A <C-w><Up>
    nnoremap <ESC>[1;5B <C-w><Down>
  elseif &term =~ "rxvt"
  " urxvt settings
    inoremap Od <C-Left>
    inoremap Oc <C-Right>
    inoremap Oa <C-o>db
    inoremap Ob <C-o>dw
    nnoremap Od <C-w><Left>
    nnoremap Oc <C-w><Right>
    nnoremap Oa <C-w><Up>
    nnoremap Ob <C-w><Down>
  else
  " default settings
    nnoremap <C-Up> <C-w><Up>
    nnoremap <C-Down> <C-w><Down>
    nnoremap <C-Left> <C-w><Left>
    nnoremap <C-Right> <C-w><Right>
    inoremap <C-Up> <C-o>db
    inoremap <C-Down> <C-o>dw
  endif

  "nnoremap <Leader>s :SemanticHighlightToggle<cr>
    map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

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
  " python-syntax
    let g:python_highlight_all = 1

" Filetype overrides
  autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
  "autocmd FileType python hi Comment ctermfg=Green

nnoremap Z :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
      \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
      \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>


