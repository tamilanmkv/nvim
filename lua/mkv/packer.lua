vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }

	}
    use({ 'rose-pine/neovim', as = 'rose-pine' })
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}	
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v1.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}
	use {
		"williamboman/mason.nvim",
		run = ":MasonUpdate" -- :MasonUpdate updates registry contents
	}
	use('tpope/vim-commentary')

	use('neovim/nvim-lspconfig')
	use('jose-elias-alvarez/null-ls.nvim')
	use('MunifTanjim/prettier.nvim')
    use('simrat39/rust-tools.nvim')
     use("eandrju/cellular-automaton.nvim")
     use("barrett-ruth/live-server.nvim")
     -- tmux integration
     -- use({
     --    "aserowy/tmux.nvim",
     --    config = function() return require("tmux").setup() end
-- })
    --- file manager ---
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}
use('mhartington/formatter.nvim')
use({ "wesleimp/stylua.nvim" })

-- auto close tags
use('m4xshen/autoclose.nvim')
require("autoclose").setup()
end)
