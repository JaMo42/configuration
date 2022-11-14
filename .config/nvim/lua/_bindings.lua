local map = require "utils".map

map('n', "<Space>", ":nohlsearch<Bar>:echo<CR>", {silent = true})

-- Switch windows without Ctrl+W
map('n', "<C-Up>", "<C-w><Up>", {})
map('n', "<C-Down>", "<C-w><Down>", {})
map('n', "<C-Left>", "<C-w><Left>", {})
map('n', "<C-Right>", "<C-w><Right>", {})

-- Jump/Delete words
map('i', "<C-Up>", "<C-o>db", {})
map('i', "<C-Down>", "<C-o>dw", {})

-- jump to begin/end of line/file
map('i', "<M-Left>", "<Esc>I", {})
map('i', "<M-Right>", "<Esc>A", {})
map('i', "<M-Up>", "<C-Home>", {})
map('i', "<M-Down>", "<C-End>", {})

-- map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
--   \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
--   \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
map('n', "<F10>",
  ":echo \"hi<\" . synIDattr(synID(line(\".\"),col(\".\"),1),\"name\")\
    . '> trans<'\
    . synIDattr(synID(line(\".\"),col(\".\"),0),\"name\") . \"> lo<\"\
    . synIDattr(synIDtrans(synID(line(\".\"),col(\".\"),1)),\"name\") . \">\"<CR>"
  , {})

map('n', "<C-n>", ":NERDTreeToggle<CR>", {})

