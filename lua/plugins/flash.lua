return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {
		modes = {
			search = {
				enabled = false,
			},
			char = {
				enabled = false,
			},
		},
	},
	keys = {
		{
			"gw",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump()
			end,
		},
		-- { "gW", mode = { "n", "x", "o" }, function() require("flash").treesitter() end },
		-- { "r", mode = "o", function() require("flash").remote() end },
		-- { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end },
		-- { "<c-s>", mode = { "c" }, function() require("flash").toggle() end },
	},
}
