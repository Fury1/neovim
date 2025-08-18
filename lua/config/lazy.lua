-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt).
--
-- NOTE: See chris.keymaps.
-- NOTE: Currently options are being set in chris/options.lua.
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = '\\'

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		-- Import your plugins.
		{ import = "plugins" },
	},
	ui = {
		-- a number <1 is a percentage., >1 is a fixed size
		size = { width = 110, height = 0.8 },
	},
	-- Automatically check for plugin updates.
	checker = { enabled = true },
})
