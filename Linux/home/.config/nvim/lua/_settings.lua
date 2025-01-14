local o = vim.o
local wo = vim.wo
local bo = vim.bo
local g = vim.g

-- main
o.mouse = 'a'
o.ttyfast = true  -- for faster scrolling (?)
o.splitbelow = true
o.splitright = true
vim.api.nvim_command("filetype off")
--o.autochdir = true
o.incsearch = true
--o.foldmethod = "expr"
--o.foldexpr = "nvim_treesitter#foldexpr()"
--o.nofoldenable = true

-- interface
wo.number = false
--wo.relativenumber = true
vim.api.nvim_command("syntax on")
vim.api.nvim_command("colors peachpuff")
vim.api.nvim_command("hi Comment ctermfg=DarkGreen")
vim.api.nvim_command("hi LineNr ctermfg=DarkGrey")
vim.api.nvim_command("set listchars=tab:\\ \\ ,nbsp:_,trail:.,extends:<,precedes:>")
wo.wrap = false
wo.list = true
o.laststatus = 2
o.hlsearch = true
--o.guicursor = "n-v-c:block,i-ci-ve:ver20,r-cr:hor20"
o.guicursor = ""
o.showcmd = true

-- indentation
o.expandtab = true
o.softtabstop = 4
o.shiftwidth = 4
o.autoindent = true
o.smartindent = true
bo.expandtab = true
bo.softtabstop = 4
bo.shiftwidth = 4
bo.autoindent = true
bo.smartindent = true

-- undo and swap
o.swapfile = false
o.undofile = true
o.undodir = "/home/j/.vim/undo_nvim"

