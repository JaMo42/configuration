call plug#begin('~/.config/nvim/plugged')
  " Core
  Plug 'neovim/nvim-lspconfig'
  Plug 'nvim-treesitter/nvim-treesitter'
  " Status bar
  Plug 'itchyny/lightline.vim'
  " File viewer
  Plug 'preservim/nerdtree'
  " Completion
  Plug 'hrsh7th/nvim-cmp'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  " Fuzzy finder
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  " Fancier LSP errors
  Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'
  " More rust-analyzer features
  Plug 'simrat39/rust-tools.nvim'
  "**** Color Schemes ****"
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'JaMo42/alabaster.vim'
call plug#end()

lua require('init')

set completeopt=menu,menuone,noselect
set shortmess+=c

" Open file at position left off
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif

" Add '_' as word delimiter
" set iskeyword-=_

" Force 2 space indentation for python, rust
autocmd FileType python setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType rust setlocal expandtab shiftwidth=2 softtabstop=2
" Restore cursor shape on exit
autocmd VimLeave * call system ('printf "\e[ q"')

" Colors
"let g:nvcode_termcolors=256
"syntax on
"colors nvcode
"if (has("termguicolors"))
"  set termguicolors
"  hi LineNr ctermbg=NONE guibg=NONE
"endif
" Disable grey background
"hi Normal ctermbg=NONE guibg=NONE
" make '~' visible
"hi! EndOfBuffer ctermfg=74 guifg=#5fafd7

syntax on
if !has('gui_running')
  set t_Co=256
endif
colorscheme peachpuff
set background=light
hi Comment ctermfg=DarkGreen cterm=bold guifg=DarkGreen gui=bold

command E Telescope find_files
nnoremap <C-O> <cmd>Telescope find_files<cr>
command F Telescope live_grep
nnoremap <C-F> <cmd>Telescope live_grep<cr>
nnoremap <C-D> <cmd>Telescope diagnostics<cr>

"nnoremap <C-LeftMouse> <cmd>lua vim.lsp.buf.references()<cr>

nnoremap <Leader>n <cmd>lua vim.lsp.diagnostic.goto_next ()<cr>
nnoremap <Leader>N <cmd>lua vim.lsp.diagnostic.goto_prev ()<cr>

nnoremap R <cmd>lua vim.lsp.buf.rename ()<cr>

