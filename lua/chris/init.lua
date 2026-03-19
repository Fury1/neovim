-- The leader key needs to be set first in keymaps
-- before anything else.
require("chris.keymaps")
require("chris.options")

-- LSPs --
--
-- Spell Check
vim.lsp.enable("codebook")

-- Markdown
vim.lsp.enable("marksman")

-- Lua
vim.lsp.enable("lua_ls")

-- Python
-- Linting and Formatting
--
-- Currently, Ruff is intended to be used alongside another Python Language Server
-- in order to support features like navigation, go to definition, and autocompletion.
-- https://docs.astral.sh/ruff/editors/
vim.lsp.enable("ruff")
vim.lsp.enable("basedpyright")

-- Rust
vim.lsp.enable("rust_analyzer")

-- Docker
vim.lsp.enable("docker_language_server")

-- Yaml
vim.lsp.enable("yamlls")
