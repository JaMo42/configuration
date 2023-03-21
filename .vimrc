"      _
"     (_)
"  __   __ _  _ __ ___   _ __  ___
"  \ \ / /| || '_ ` _ \ | '__|/ __|
"  _\ V / | || | | | | || |  | (__
" (_)\_/  |_||_| |_| |_||_|   \___|

" Plugins
if !empty(glob("~/.vim/autoload/plug.vim"))
  call plug#begin('~/.vim/plugged')
    " Color schemes
    Plug 'JaMo42/alabaster.vim'
    Plug 'nikolvs/vim-sunbather'
    " Aesthetics
    Plug 'junegunn/limelight.vim'
    " Features
    Plug 'tpope/vim-fugitive'
    "Plug 'wellle/context.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'preservim/tagbar'
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
  set splitbelow
  set splitright
  set showcmd
  "set autochdir
  filetype off
  " Open file at position left off
  if has("autocmd")
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal! g`\"" | endif
  endif
  set incsearch

" Appearance
  set nowrap
  syntax on
  set nu
  " set relativenumber
  set laststatus=2
  set listchars=tab:>\ ,nbsp:_,trail:.,extends:<,precedes:>
  set list
  set hlsearch
  "set colorcolumn=81
  " match Error "\%>120v"
  " Colors
  "---
  "colors alabaster
  "---
  "colorscheme peachpuff
  "set background=light
  "---
  hi Statement ctermfg=DarkYellow
  hi LineNr ctermfg=DarkGray
  "hi Comment ctermfg=DarkGreen cterm=bold
  hi Comment ctermfg=40 cterm=bold
  "hi! ColorColumn ctermbg=232 guibg=#080808
  hi Search ctermbg=DarkGray
  "---
  "colors sunbather
  "set background=dark

" Key bindings
  nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
  nmap tt :TagbarToggle<CR>

  map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
        \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
        \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

" Filetype overrides
  autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
  autocmd FileType rust setlocal expandtab shiftwidth=2 softtabstop=2

" Limelight
  let g:limelight_conceal_ctermfg = 240
  let g:limelight_bop = '^\s*{\=$\n\zs'
  let g:limelight_eop = '^\s*}\=$'
  command LL Limelight!!

