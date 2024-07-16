require("mason").setup()
require("mason-lspconfig").setup()

local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    filetypes = {"python"},
})

lspconfig.lua_ls.setup({
    filetypes = {"lua"},
})
