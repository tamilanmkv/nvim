return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      openai_params = {
        model = "llama-3.3-70b-versatile",
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "folke/trouble.nvim", -- optional
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>aa",
      "<cmd>ChatGPT<cr>",
      mode = "n",
    },
    {
      "<leader>ac",
      "<cmd>ChatGPTActAs<cr>",
      mode = "n",
    },
    {
      "<leader>agc",
      "<cmd>ChatGPTCompleteCode<cr>",
      mode = "n",
    },
    {
      "<leader>ai",
      "<cmd>ChatGPTEditWithInstructions<cr>",
      mode = { "n", "v" },
    },
    {
      "<leader>af",
      "<cmd>ChatGPTRun fix_bugs<cr>",
      mode = { "n", "v" },
    },
  },
}
