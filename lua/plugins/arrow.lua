return {
	"otavioschwanck/arrow.nvim",
    lazy = false,
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
		-- or if using `mini.icons`
		-- { "echasnovski/mini.icons" },
	},
	opts = {
		show_icons = true,
		leader_key = "<A-a>", -- Recommended to be a single key
		buffer_leader_key = "<A-s>", -- Per Buffer Mappings
	},
	keys = {
		{
			"gn",
			function()
				require("arrow.persist").next()
			end,
		},
		{
			"gp",
			function()
				require("arrow.persist").previous()
			end,
		},
	},
}
