-- vim: sw=2 sts=2

return {
  -- Base16 colorschemes.
  -- Also see https://rrethy.github.io/book/colorscheme.html for usage with
  -- https://github.com/kdrag0n/base16-kitty for matching kitty and nvim looks.
  {
    "RRethy/nvim-base16",
    config = function()
      require("base16-colorscheme").setup("tomorrow-night")
    end,
  },

  -- Show indentation guides.
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = { indent = { char = "¦" } },
    config = function(_, opts)
      require("ibl").setup(opts)
      local hooks = require("ibl.hooks")
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
      hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)
    end,
  },

  -- Statusline.
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "RRethy/nvim-base16",
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      options = {
        component_separators = { left = "|", right = "|" },
        theme = "base16",
      },
    },
    config = function(_, opts)
      vim.opt.showmode = false
      require("lualine").setup(opts)
    end,
  },
}
