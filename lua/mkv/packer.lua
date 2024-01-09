vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }

	}

    -- Using onedark theme
    use 'navarasu/onedark.nvim'

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

use('APZelos/blamer.nvim')

-- Remove the `use` here if you're using folke/lazy.nvim.
use {
  'Exafunction/codeium.vim',
  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })
  end
}

use {
  'mawkler/modicator.nvim',
  after = 'onedark.nvim', -- Add your colorscheme plugin here
  setup = function()
    -- These are required for Modicator to work
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
  end,
  config = function()
    require('modicator').setup()
  end
}
end)
