return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {},
  keys = {
    {
      "<leader>ff",
      function()
        require("telescope.builtin").find_files()
      end,
      mode = "n",
    },
    {
      "<leader>fg",
      function()
        require("telescope.builtin").live_grep()
      end,
      mode = "n",
    },
    {
      "<leader>fs",
      function()
        require("telescope.builtin").grep_string()
      end,
      mode = "n",
    },
    {
      "<leader>fr",
      ":Telescope resume<CR>",
      mode = "n",
    },
    {
      "<leader>fh",
      function()
        require("telescope.builtin").help_tags()
      end,
      mode = "n",
    },
    {
      "<leader>fb",
      function()
        require("telescope.builtin").buffers()
      end,
      mode = "n",
    },
    {
      "<C-p>",
      function()
        require("telescope.builtin").git_files()
      end,
      mode = "n",
    },
  },
}
