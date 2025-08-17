return {
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		opts = {},
		keys = {
			{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>" },
			{ "<leader>ghs", "<cmd>Gitsigns stage_hunk<CR>", mode = { "n" } },
			{
				"<leader>ghs",
				function()
					require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
				end,
				mode = { "v" },
			},
			{ "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<CR>" },
			{ "<leader>ghn", "<cmd>Gitsigns nav_hunk next<CR>" },
			{ "<leader>ghp", "<cmd>Gitsigns nav_hunk prev<CR>" },
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
