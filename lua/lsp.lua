local servers = {'clangd', 'vimls'}
for k, v in ipairs(servers) do
	require('lspconfig')[v].setup{}
end

vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    underline = true,
    update_in_insert = true,
})

local signs = {Error = " ", Warn = " ", Hint = " ", Info = " "}
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

 
local caps = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
for k, v in ipairs({'clangd', 'vimls'}) do    
    require('lspconfig')[v].setup {    
        capabilities = caps,    
    }    
end

--补全时，显示函数签名
require('lsp_signature').setup()
