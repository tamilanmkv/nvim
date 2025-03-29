return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = function()
      vim.api.nvim_set_keymap("n", "<leader>pv", ":Neotree<CR>", { noremap = true })
    end,
  },
}
