return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {},
	-- Optional dependencies
	-- dependencies = { { "nvim-mini/mini.icons", opts = {} } },
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
	lazy = false,
	keys = {
		-- { "<leader>/", function() Snacks.picker.grep() end, desc = "Grep" },
		{ "<leader>o", "<cmd>Oil --float .<CR>", desc = "Open parent directory" },
	},
}
