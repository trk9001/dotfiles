-- vim: sw=2 sts=2

return {
  -- Join/split code blocks.
  {
    "Wansmer/treesj",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = { use_default_keymaps = false, max_join_length = 88 },
    keys = {
      { "<Leader>j", "<Cmd>TSJToggle<CR>", desc = "Toggle between join/split" },
    },
  },

  -- Smart commenting.
  {
    "numToStr/Comment.nvim",
    opts = { mappings = { extra = false } },
    keys = {
      { "gcc", desc = "Toggle line comment" },
      { "gbc", desc = "Toggle block comment" },
    },
  },

  -- Read/write files with sudo.
  "lambdalisue/suda.vim",

  -- Autopairs.
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },

  -- Reopen files at last edit position.
  "farmergreg/vim-lastplace",
}
