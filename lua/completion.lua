local cmp = require('cmp')    

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end

local feedkey = function(key, mode)
    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes(key, true, true, true), mode, true)
end

cmp.setup {    
    snippet = {    
        expand = function(args)    
            vim.fn["vsnip#anonymous"](args.body)    
        end,    
    },    

    mapping = {    
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),    
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),    
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),    
        ['<C-y>'] = cmp.config.disable,    
        ['<C-e>'] = cmp.mapping({    
            i = cmp.mapping.abort(),    
            c = cmp.mapping.close(),    
        }),    
        ['<CR>'] = cmp.mapping.confirm({ select = true }),    
        ['<C-j>'] = cmp.mapping(function(fallback)    
            if cmp.visible() then    
                cmp.select_next_item()    
            elseif vim.fn["vsnip#available"](1) == 1 then    
                feedkey("<Plug>(vsnip-expand-or-jump)", "")    
            elseif has_words_before() then    
                cmp.complete()    
            else    
                fallback()    
            end    
        end, { "i", "s" }),    
        ['<C-k>'] = cmp.mapping(function()    
            if cmp.visible() then    
                cmp.select_prev_item()    
            elseif vim.fn["vsnip#jumpable"](-1) == 1 then    
                feedkey("<Plug>(vsnip-jump-prev)", "")    
            end    
        end, { "i", "s" }),    
    },    
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
        { name = 'buffer' },
        { name = 'path' },
    })
}

require('nvim-autopairs').setup()
