local ss = {'clangd', 'vimls'}
for k, v in ipairs(ss) do
    require('lspconfig')[v].setup{}
end
