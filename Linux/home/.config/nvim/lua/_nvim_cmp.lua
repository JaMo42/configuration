local cmp = require "cmp"

cmp.setup ({
  snippet = {
    expand = function (args)
      vim.fn["vsnip#anonymous"] (args.body)
    end,
  },

  mapping = {
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<C-Space>"] = cmp.mapping.complete (),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping.confirm({ select = true })
  },

  sources = {
    { name = "nvim_lsp", dup = 0 },
    { name = "vsnip", dup = 0 },
    { name = "path", dup = 0 },
    { name = "buffer" }
  }
})

