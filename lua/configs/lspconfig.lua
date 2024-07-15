require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"python"},
})

lspconfig.lua_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {"lua"},
})
