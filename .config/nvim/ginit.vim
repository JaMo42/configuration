if exists ('g:GuiLoaded')
  call GuiWindowMaximized(1)
  GuiFont! SF\ Mono:h8

  inoremap ¸ <Nop>
endif

" Colors
let g:nvcode_termcolors=256
syntax on
colors nvcode
if (has("termguicolors"))
  set termguicolors
  hi LineNr ctermbg=NONE guibg=NONE
endif
" Disable grey background
" hi Normal ctermbg=NONE guibg=NONE
" make '~' visible
hi! EndOfBuffer ctermfg=74 guifg=#5fafd7

