return {
	"brenoprata10/nvim-highlight-colors",
	opts = {},
	config = function(_, opts)
		-- Ensure 'terminguicolors' is enabled in neovim.
		vim.opt.termguicolors = true
		require("nvim-highlight-colors").setup(opts)
	end,
}
