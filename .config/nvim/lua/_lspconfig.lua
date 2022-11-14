local c = require "lspconfig"

c.rust_analyzer.setup ({})

c.clangd.setup ({
  filetypes = { "c", "cc", "cpp", "ino" },
  --cmd = {"clangd", "--background-index"},
})
--c.ccls.setup ({
--  filetypes = { "c", "cc", "cpp", "ino" }
--})

c.pyright.setup ({})

-- lsp_lines plugin
require("lsp_lines").setup()
vim.diagnostic.config ({
  virtual_text = false,
  virtual_lines = true,
})
vim.keymap.set(
  "",
  "<Leader>l",
  require("lsp_lines").toggle,
  { desc = "Toggle lsp_lines" }
)

