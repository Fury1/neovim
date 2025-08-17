return {
	{
		"lewis6991/gitsigns.nvim",
        lazy = false,
		opts = {},
		keys = {
			{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>" },
			{ "<leader>gh", "<cmd>Gitsigns stage_hunk<CR>" },
		},
	},
	{
		"tpope/vim-fugitive",
		lazy = false,
		keys = {
			{ "<leader>gs", vim.cmd.Git },
		},
	},
}
