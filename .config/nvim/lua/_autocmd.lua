function au(cmd)
  vim.api.nvim_command("autocmd " .. cmd)
end

-- open file where left off
--au("BufReadPost * if line(\"'\\\"\") > 0 && line(\"'\\\"\") <= line(\"$\")
--      \\| exe \"normal! g`\\\"\" | endif")

-- Nerdtree
-- au("vimenter * NERDTree")
-- au("bufenter * if (winnr(\"$\") == 1 && exists(\"\b:NERDTree\") && b:NERDTree.isTabTree()) | q | endif")

