local opts = { noremap=true, silent=true }

vim.keymap.set('n', ';d', vim.lsp.buf.definition, opts)
vim.keymap.set('n', ';D', vim.lsp.buf.declaration, opts)
vim.keymap.set('n', ';r', vim.lsp.buf.rename, opts)
vim.keymap.set('n', ';R', vim.lsp.buf.references, opts)
vim.keymap.set('n', ';g', vim.lsp.buf.signature_help, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)

vim.keymap.set('n', ';q', '<cmd>:q<CR>', opts)
vim.keymap.set('n', ';w', '<cmd>:w<CR>', opts)

vim.keymap.set('n', '<space>f', '<cmd>:NvimTreeFocus<CR>', opts)
vim.keymap.set('n', '<space>o', '<cmd>:AerialOpen<CR>', opts)

vim.keymap.set('n', ';1', '<cmd>:BufferLineGoToBuffer 1<CR>', opts)
vim.keymap.set('n', ';2', '<cmd>:BufferLineGoToBuffer 2<CR>', opts)
vim.keymap.set('n', ';3', '<cmd>:BufferLineGoToBuffer 3<CR>', opts)
vim.keymap.set('n', ';4', '<cmd>:BufferLineGoToBuffer 4<CR>', opts)
vim.keymap.set('n', ';5', '<cmd>:BufferLineGoToBuffer 5<CR>', opts)
vim.keymap.set('n', ';6', '<cmd>:BufferLineGoToBuffer 6<CR>', opts)
vim.keymap.set('n', ';7', '<cmd>:BufferLineGoToBuffer 7<CR>', opts)
vim.keymap.set('n', ';8', '<cmd>:BufferLineGoToBuffer 8<CR>', opts)
vim.keymap.set('n', ';9', '<cmd>:BufferLineGoToBuffer 9<CR>', opts)
vim.keymap.set('n', '<C-n>', '<cmd>:BufferLineCycleNext<CR>', opts)
vim.keymap.set('n', '<C-p>', '<cmd>:BufferLineCyclePrev<CR>', opts)


vim.keymap.set('n', ';ff', '<cmd>:Telescope find_files<CR>', opts)
vim.keymap.set('n', ';fg', '<cmd>:Telescope live_grep<CR>', opts)
vim.keymap.set('n', ';fb', '<cmd>:Telescope buffers<CR>', opts)
vim.keymap.set('n', ';fo', '<cmd>:Telescope oldfiles<CR>', opts)
