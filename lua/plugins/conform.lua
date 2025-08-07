return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_organize_imports", "ruff_format" },
		},
		format_on_save = {
			lsp_format = "never",
			timeout_ms = 500,
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)
	end,
	keys = {
		{
			"<leader>=",
			mode = { "n", "v" },
			function()
				require("conform").format({ async = true, lsp_format = "never" })
			end,
		},
	},
}
