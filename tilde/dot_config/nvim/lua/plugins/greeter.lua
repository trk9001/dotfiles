-- vim: sw=2 sts=2

return {
  -- Fancy greeter.
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function()
      local startify = require("alpha.themes.startify")
      local logo = [[
                                             
      ████ ██████           █████      ██
     ███████████             █████ 
     █████████ ███████████████████ ███   ███████████
    █████████  ███    █████████████ █████ ██████████████
   █████████ ██████████ █████████ █████ █████ ████ █████
 ███████████ ███    ███ █████████ █████ █████ ████ █████
██████  █████████████████████ ████ █████ █████ ████ ██████
]]
      startify.section.header.val = vim.split(logo, "\n")
      startify.section.header.opts.hl = "AlphaHeader"
      startify.opts.layout[1].val = 3
      return startify.opts
    end,
  },
}
