-- vim: sw=2 sts=2

-- Not sure if providers are required. Perhaps we need them only if we
-- want to use plugins written in the "provided" language?
--
-- In case that is incorrect, here is how to configure a Python provider on
-- Fedora (as of 36 at least):
-- - Install the python3-neovim package (`sudo dnf install python3-neovim`).
-- - Specify the Python binary to avoid problems in virtual environments:
--   ```
--   g.python3_host_prog = "/usr/bin/python3"
--   ```
--
-- For Node.js support, in a similar manner install the `node` package (on
-- Fedora 36 at least) and run `npm install -g neovim`. For a global install
-- but under $HOME, see https://arongriffis.com/2020-02-25-homedir-installs.

-- Disable "language-support" providers.
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
