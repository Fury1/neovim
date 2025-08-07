return {
	"rachartier/tiny-code-action.nvim",
	dependencies = {
		{ "nvim-lua/plenary.nvim" },
	},
	event = "LspAttach",
	opts = {
		picker = {
			"buffer",
			opts = {
				hotkeys = true, -- Enable hotkeys for quick selection of actions
				hotkeys_mode = "text_based", -- Modes for generating hotkeys
				auto_preview = false, -- Enable or disable automatic preview
				auto_accept = true, -- Automatically accept the selected action
				position = "cursor", -- Position of the picker window
				custom_keys = {
					{ key = "m", pattern = "Fill match arms" },
					{ key = "m", pattern = "Consider making this binding mutable: mut" },
					{ key = "r", pattern = "Rename.*" }, -- Lua pattern matching
					{ key = "e", pattern = "Extract Method" },
				},
			},
		},
	},
	config = function(_, opts)
		require("tiny-code-action").setup(opts)
		vim.keymap.set({ "n", "x" }, "<leader>a", function()
			require("tiny-code-action").code_action()
		end, { noremap = true, silent = true })
	end,
}
