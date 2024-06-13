vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

-- Packer can manage itself
	use('wbthomason/packer.nvim')

-- Mason package manger
	use {
		"williamboman/mason.nvim",
        {'williamboman/mason-lspconfig.nvim'},
	}


-- github, undo history, sysntax
	use('tpope/vim-fugitive')
    use('mbbill/undotree')
    use('nvim-treesitter/playground')


-- telscope scearch
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }

	}
    use('theprimeagen/harpoon')

-- line command
	use('tpope/vim-commentary')

-- Using onedark theme
    use 'navarasu/onedark.nvim'

	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}	
    use('nvim-tree/nvim-web-devicons')

	-- use('MunifTanjim/prettier.nvim')
    use('simrat39/rust-tools.nvim')

-- fun
     use("eandrju/cellular-automaton.nvim")

-- live server
     use("barrett-ruth/live-server.nvim")

--- file manager ---
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional
  },
}

-- Codium 
use {
    "Exafunction/codeium.nvim",
    requires = {
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
    },
    config = function()
        require("codeium").setup({
        })
    end
}
-- use { "Exafunction/codeium.vim",
--     requires = {
--         "nvim-lua/plenary.nvim",
--         "hrsh7th/nvim-cmp",
--     },
-- }

-- lsp config
use { "neovim/nvim-lspconfig" }
use { "onsails/lspkind.nvim" }


-- speed regex
use 'ggandor/lightspeed.nvim'


-- markdown
use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
})
-- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

-- linue identify
use {
  'mawkler/modicator.nvim',
  after = 'onedark.nvim', -- Add your colorscheme plugin here
  setup = function()
    vim.o.cursorline = true
    vim.o.number = true
    vim.o.termguicolors = true
  end,
}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use "lukas-reineke/indent-blankline.nvim"


end)
