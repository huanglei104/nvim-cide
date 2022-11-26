return require('packer').startup({
    function()
        use 'kyazdani42/nvim-web-devicons'
        use 'wbthomason/packer.nvim'
	use 'neovim/nvim-lspconfig'
	use 'folke/tokyonight.nvim'
	use 'kyazdani42/nvim-tree.lua'
	use 'nvim-lualine/lualine.nvim'
	use 'akinsho/bufferline.nvim'
        use 'stevearc/aerial.nvim'
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-telescope/telescope.nvim'
	use 'windwp/nvim-autopairs'
        use 'nvim-lua/plenary.nvim'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'
    end,

    config = {
        max_jobs = 16,
        display = {
            open_fn = function()
                return require('packer.util').float({ border = 'single' })
            end
        }
    }
})
