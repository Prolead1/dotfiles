local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
local servers = require("custom.configs.server")

for server, opts in pairs(servers) do
    opts.capabilities = capabilities
    require("lspconfig")[server].setup(opts)
end
