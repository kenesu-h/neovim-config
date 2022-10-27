require("null-ls").setup({
  on_attach = function(client, _)
    if client.server_capabilities.documentFormattingProvider then
      vim.cmd("nnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.formatting()<CR>")

      -- format on save
      vim.cmd("autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()")
    end

    if client.server_capabilities.documentRangeFormattingProvider then
      vim.cmd("xnoremap <silent><buffer> <Leader>f :lua vim.lsp.buf.range_formatting({})<CR>")
    end
  end,
  sources = {
      require("null-ls").builtins.formatting.stylua,
      require("null-ls").builtins.diagnostics.eslint,
      require("null-ls").builtins.completion.spell,
  },
})
