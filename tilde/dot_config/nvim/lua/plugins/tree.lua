-- vim: sw=2 sts=2

return {
  -- File (and other things) explorer.
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    opts = {
      filesystem = {
        filtered_items = {
          -- visible = true,
          always_show = {
            ".config/",
          },
        },
      },
    },
    keys = {
      { "\\", "<Cmd>Neotree reveal<CR>", desc = "Toggle Neo-tree" },
    },
  },
}
