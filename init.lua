vim.g.mapleader = ';'
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.number = true
vim.o.hidden = true
vim.o.termguicolors = true
vim.o.backup = false
vim.o.writebackup = false
vim.o.fillchars = 'eob: '
vim.o.timeoutlen = 300
vim.o.expandtab = true

plugins = {
	'nvim-treesitter/nvim-treesitter',
 	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	'kyazdani42/nvim-web-devicons',
	'neovim/nvim-lspconfig',
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-vsnip',
	'hrsh7th/vim-vsnip',
 	'ray-x/lsp_signature.nvim',
	'akinsho/bufferline.nvim',
	'kyazdani42/nvim-tree.lua',
	'nvim-lualine/lualine.nvim',
	'windwp/nvim-autopairs',
    'onsails/lspkind.nvim',
    'EdenEast/nightfox.nvim',
}

vim.call('plug#begin', '~/.config/nvim/plugins')
for i, v in ipairs(plugins) do
	vim.call('plug#', v)
end
vim.call('plug#end')

require('theme')
require('treesitter')
require('statusline')
require('bufferline1')
require('fileexplorer')
require('fuzzyfind')
require('lsp')
require('completion')
require('keymap')
