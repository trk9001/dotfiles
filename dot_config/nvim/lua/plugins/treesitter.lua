-- vim: sw=2 sts=2

return {
  -- Treesitter configs and abstraction layer.
  {
    "nvim-treesitter/nvim-treesitter",
    build = function()
      require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    opts = {
      ensure_installed = {
        "bash",
        "c",
        "lua",
        "markdown",
        "python",
        "vim",
        "vimdoc",
        "query",
      },

      -- Install missing parsers (requires the `tree-sitter` CLI).
      auto_install = true,

      highlight = {
        enable = true,

        -- Disable highlighting for files larger than 5 MiB.
        disable = function(_, buf)
          local max_filesize = 5 * 1024 * 1024 -- 5 MiB
          local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
          if ok and stats and stats.size > max_filesize then
            return true
          end
        end,
      },

      incremental_selection = {
        enable = false, -- TODO: enable incremental selections!
      },

      indent = { enable = true },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.opt.foldmethod = "expr"
      vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
      vim.opt.foldenable = false
    end,
  },
}
