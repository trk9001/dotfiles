-- vim: sw=2 sts=2

local api = vim.api
local g = vim.g
local keymap = vim.keymap
local opt = vim.opt

-- Set window title.
opt.title = true

-- Enable the windowbar and unified status line.
opt.winbar = "%f %R%M"
opt.laststatus = 3

-- Revert Neovim 0.8.0's default mouse behaviour.
-- Also see https://github.com/neovim/neovim/pull/19290#issuecomment-1186515224.
opt.mousemodel = "extend"

-- Faster async updates.
opt.updatetime = 250

-- Show relative line numbers.
opt.number = true
opt.relativenumber = true

-- Always show the sign column.
opt.signcolumn = "yes"

-- Context lines around cursor.
opt.scrolloff = 3

-- Default indentation preferences.
opt.breakindent = true
opt.smartindent = true
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

-- Fold options.
opt.foldenable = false
opt.foldminlines = 5
opt.foldnestmax = 5

-- "Fix" window splitting directions.
opt.splitbelow = true
opt.splitright = true

-- Search options.
opt.ignorecase = true
opt.smartcase = true

-- Diff options.
opt.diffopt:append("vertical")

-- Promote space to leader (this must come before plugins are "required") and
-- disable existing mapped actions.
g.mapleader = " "
g.maplocalleader = " "
keymap.set({ "n", "v" }, "<Space>", "")

-- Match sign column colors to the number column's.
api.nvim_set_hl(0, "SignColumn", { link = "LineNr" })

-- Speed up loading Lua modules to improve startup time.
vim.loader.enable()
