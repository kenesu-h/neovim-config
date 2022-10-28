local lspconfig = require "lspconfig"
local mason = require "mason"
local mason_lspconfig = require "mason-lspconfig"

mason.setup()
mason_lspconfig.setup({
  ensure_installed = {
    "sumneko_lua",
  },
  automatic_installation = false,
})


local capabilities = require("cmp_nvim_lsp").default_capabilities()

lspconfig["sumneko_lua"].setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      },
    },
  },
})

lspconfig["tsserver"].setup({
  capabilities = capabilities,
})

