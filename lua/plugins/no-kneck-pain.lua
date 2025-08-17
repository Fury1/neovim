return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	opts = {
		width = 107,
		buffers = {
			scratchPad = {
				-- Persist the scratch pads like Jetbrains.
				enabled = true,
				fileName = "scratch",
				location = os.getenv("HOME") .. "/.local/state/nvim/",
			},
			bo = {
				filetype = "md",
			},
			wo = {
				fillchars = "eob: ",
			},
		},
	},
	keys = {
		{ "<leader>z", "<cmd>NoNeckPain<CR>" },
	},
}
