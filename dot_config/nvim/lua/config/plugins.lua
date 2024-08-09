-- vim: sw=2 sts=2

-- Plugins' path.
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Bootstrap lazy.nvim.
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.runtimepath:prepend(lazypath)

-- Use a protected call so we don't error out on first use.
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  print("lazy.nvim was just installed, please restart Neovim!")
  return
else
  lazy.setup("plugins")
end
