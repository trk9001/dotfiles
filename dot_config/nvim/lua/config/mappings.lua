-- vim: sw=2 sts=2

local keymap = vim.keymap
local opt = vim.opt

-- Toggle line numbers.
keymap.set("n", "<C-n>", function()
  opt.number = not opt.number:get()
  opt.relativenumber = not opt.relativenumber:get()
end, { desc = "Toggle line numbers." })

-- Turn off search highlighting.
keymap.set("n", "<Esc><Esc>", function()
  opt.hlsearch = false
end, { desc = "Turn off search highlighting.", silent = true })

-- Scrolling enhancements.
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")

-- Search result focusing enhancements.
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- Smart(er) vertical movement for wrapped lines.
keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Return to visual mode after indenting.
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
