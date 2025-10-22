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
    config = function(_,opts)
        require('no-neck-pain').setup(opts)
        -- No Neck Pain sets this to 2 apparently?
        -- Default is 0...
        vim.opt.conceallevel = 0
    end,
	keys = {
		{ "<leader>z", "<cmd>NoNeckPain<CR>" },
	},
}
