return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = { style = "moon" },
  },
}
