return {
	{
		"webhooked/kanso.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			bold = true,
			italics = true,
			compile = false,
			undercurl = true,
			functionStyle = {},
			keywordStyle = { italic = true },
			statementStyle = {},
			typeStyle = {},
			transparent = true,
			dimInactive = false,
			terminalColors = true,
			colors = {
				palette = {},
				theme = { zen = {}, pearl = {}, ink = {}, all = {} },
			},
			background = {
				dark = "ink",
				light = "pearl",
			},
			foreground = {
				dark = "default",
				light = "saturated",
			},
		},
		config = function(_, opts)
			require("kanso").setup(opts)
			-- require('kanso').load()
		end,
	},
	{
		"vague2k/vague.nvim",
		lazy = false,
		priority = 1000,
		opts = {
			transparent = true,
			colors = {
				bg = "#181818",
				fg = "#cdcdcd",
				floatBorder = "#878787",
				line = "#26262d",
				comment = "#808080",
				builtin = "#b4d4cf",
				func = "#c06862",
				string = "#e8b589",
				number = "#9c8fb8",
				property = "#c3c3d5",
				constant = "#97abc4",
				parameter = "#cdc9c4",
				visual = "#333738",
				error = "#d8647e",
				warning = "#f3be7c",
				hint = "#74acd6",
				operator = "#90a0b5",
				keyword = "#6e94b2",
				type = "#82A1AB",
				search = "#405065",
				plus = "#7fa563",
				delta = "#f3be7c",
			},
			on_highlights = function(hl, c)
				hl.Boolean = {
					fg = c.func,
				}
				hl["@boolean"] = {
					fg = c.func,
					gui = "bold",
				}
				hl.FlashLabel = {
					fg = c.hint,
				}
			end,
		},
		config = function(_, opts)
			require("vague").setup(opts)
			vim.cmd("colorscheme vague")
		end,
	},
}
