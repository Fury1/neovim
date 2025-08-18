return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	enabled = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},
	opts = {
		defaults = {
			sorting_strategy = "ascending",
			layout_strategy = "center",
			layout_config = {
				anchor = "s",
				height = 0.3,
				width = 110,
			},
			preview = {
				treesitter = true,
			},
			mappings = {
				i = {
					["<esc>"] = "close",
				},
			},
		},
	},
	config = function(_, opts)
		require("telescope").setup(opts)
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{ "<leader>f", "<cmd>Telescope find_files<CR>" },
		{ "<leader>/", "<cmd>Telescope live_grep<CR>" },
		{ "<leader>b", "<cmd>Telescope buffers<CR>" },
		{ "<leader>j", "<cmd>Telescope jumplist<CR>" },
		{ "<leader>m", "<cmd>Telescope marks<CR>" },
		{ "<leader>r", "<cmd>Telescope lsp_references<CR>" },
		-- {'<leader>gc', '<cmd>Telescope git_commits<CR>' },
		-- {'<leader>gf', '<cmd>Telescope git_files<CR>' },
		{ "<leader>s", "<cmd>Telescope lsp_document_symbols<CR>" },
		{ "<leader>D", "<cmd>Telescope diagnostics<CR>" },
		{ "<leader>d", "<cmd>Telescope diagnostics bufnr=0<CR>" },
		{ "<leader>h", "<cmd>Telescope help_tags<CR>" },
	},
}
