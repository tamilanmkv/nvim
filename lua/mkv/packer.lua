vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)

-- Packer can manage itself
	use('wbthomason/packer.nvim')


-- lsp zerp
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment the two plugins below if you want to manage the language servers from neovim
    -- {'williamboman/mason.nvim'},
    -- {'williamboman/mason-lspconfig.nvim'},

    {'neovim/nvim-lspconfig'},
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}
-- Mason package manger
use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":MasonUpdate"
    }
    use{ "VonHeikemen/lsp-zero.nvim"}
    use{ "hrsh7th/nvim-cmp"}

-- github, undo history, sysntax
	use('tpope/vim-fugitive')
    use 'APZelos/blamer.nvim'
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
-- use {
--     "Exafunction/codeium.nvim",
--     requires = {
--         "nvim-lua/plenary.nvim",
--         "hrsh7th/nvim-cmp",
--     },
--     config = function()
--         require("codeium").setup({
--         })
--     end
-- }

-- Codium
use {
  'Exafunction/codeium.vim',
  branch = "1.8.5",

  config = function ()
    -- Change '<C-g>' here to any keycode you like.
    -- vim.g.codeium_disable_bindings = 1
    vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
    vim.keymap.set('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
  end
}

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
