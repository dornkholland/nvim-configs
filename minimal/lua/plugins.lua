-- Plugins
require("lazy").setup({
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },

  {
    "tpope/vim-sleuth",
  },

  {
    "numToStr/Comment.nvim",
    config = true,
  },
  {
    "nvim-telescope/telescope.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
      },
      keys = {
        {
          "<leader>ff",
          function()
            require("telescope.builtin").find_files({
              hidden = true,
              no_ignore = false,
            })
          end,
          desc = "Find files",
        },
        {
          "<leader>sg",
          function()
            require("telescope.builtin").live_grep()
          end,
          desc = "Search project",
        },
        {
          "<leader>fb",
          function()
            require("telescope.builtin").buffers()
          end,
          desc = "Find buffer",
        },
        {
          "<leader>sh",
          function()
            require("telescope.builtin").help_tags()
          end,
          desc = "Search in help",
        },
      }
    },
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {},
    },
})
