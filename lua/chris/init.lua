-- The leader key needs to be set first in keymaps
-- before anything else.
require("chris.keymaps")
require("chris.options")

-- LSPs
--
-- Spell Check
vim.lsp.enable("codebook")

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

-- Pyright 
-- Missing some functionality basedpyright includes.
-- vim.lsp.enable('pyright')
--
-- Pylsp + Rope
-- Missing gd functionality 7/11/25.
-- vim.lsp.enable('pylsp')
