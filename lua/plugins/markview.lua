return {
	"OXY2DEV/markview.nvim",
	lazy = true,

	-- Completion for `blink.cmp`
	dependencies = { "saghen/blink.cmp" },
	opts = {
		preview = {
			enable = false,
		},
	},
	keys = {
		{ "<leader>p", "<cmd>Markview Toggle<CR>", desc = "Toggle Markview inline preview" },
	},
}
