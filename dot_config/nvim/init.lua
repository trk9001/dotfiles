-- vim: sw=2 sts=2

-- Neovim configuration.
--
-- The order of modules loaded below is important. Specifically, we want to have
-- the leader configured before configuring the plugins, and we want mappings to
-- load after the plugins.

-- General settings.
require("config.options")

-- Neovim provider settings.
require("config.providers")

-- Plugin manager and plugin settings.
require("config.plugins")

-- Keymap settings.
require("config.mappings")
