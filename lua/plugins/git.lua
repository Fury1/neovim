return {
	{
		"sindrets/diffview.nvim",
		opts = {},
	},
	{
		"lewis6991/gitsigns.nvim",
		lazy = false,
		opts = {},
		keys = {
			{ "<leader>ghP", "<cmd>Gitsigns preview_hunk<CR>" },
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
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim", -- required
			"sindrets/diffview.nvim", -- optional - Diff integration

			-- Only one of these is needed.
			-- "nvim-telescope/telescope.nvim",
			-- "ibhagwan/fzf-lua", -- optional
			-- "nvim-mini/mini.pick", -- optional
			"folke/snacks.nvim", -- optional
		},
		cmd = "Neogit",
		opts = {},
		keys = {
			{ "<leader>gs", "<cmd>Neogit<CR>", desc = "Show Neogit status" },
		},
	},
}
