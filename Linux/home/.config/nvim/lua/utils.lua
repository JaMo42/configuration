local M = {}

function M.map(mode, key, result, opts)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {
      noremap = true,
      silent = opts.silent or false,
      expr = opts.expr or false,
      script = opts.script or false
    }
  )
end

function M.augroup(group, fn)
  vim.api.nvim_command("augroup " .. group)
  vim.api.nvim_command("autocmd!")
  fn()
  vim.api.nvim_command("augroup END")
end

return M
