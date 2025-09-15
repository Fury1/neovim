return {
	"saghen/blink.cmp",
	-- Optional: provides snippets for the snippet source.
	dependencies = {
		{ "rafamadriz/friendly-snippets" },
		{ "echasnovski/mini.icons", version = "*" },
	},
	-- NOTE: Update this in the future as needed, currently this is stable 7/20/25.
	version = "1.*",
	opts = {
		-- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
		--
		-- All presets have the following mappings:
		-- C-x: Open menu or open docs if already open
		-- C-n/C-p or Up/Down: Select next/previous item
		-- C-e: Hide menu
		-- C-k: Toggle signature help (if signature.enabled = true)
		--
		-- See :h blink-cmp-config-keymap for defining your own keymap.
		keymap = {
			preset = "default",
			["<C-x>"] = { "show", "show_documentation", "hide_documentation", "fallback" },
			["<C-u>"] = { "scroll_documentation_up", "fallback" },
			["<C-d>"] = { "scroll_documentation_down", "fallback" },
			["<CR>"] = { "select_and_accept", "fallback" },
		},
		cmdline = {
			enabled = true,
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = false } },
		},
		term = {
			enabled = false,
		},
		appearance = {
			nerd_font_variant = "mono",
			use_nvim_cmp_as_default = false,
		},
		-- (Default) Only show the documentation popup when manually triggered.
		completion = {
			accept = {
				auto_brackets = { enabled = true },
			},
			documentation = {
				treesitter_highlighting = true,
				auto_show = false, -- C-x to show the docs while in the completion
				auto_show_delay_ms = 250,
			},
			menu = {
				auto_show = false,
				draw = {
					treesitter = { "lsp" },
					columns = {
						{ "label" },
						{ "kind_icon", gap = 1, "kind", "source_name" },
					},
					components = {
						label_description = {
							width = { max = 30 },
							text = function(ctx)
								return ctx.label_description
							end,
							highlight = "BlinkCmpLabelDescription",
						},
						kind_icon = {
							text = function(ctx)
								local kind_icon, _, _ = require("mini.icons").get("lsp", ctx.kind)
								return kind_icon
							end,
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
						kind = {
							-- (optional) use highlights from mini.icons
							highlight = function(ctx)
								local _, hl, _ = require("mini.icons").get("lsp", ctx.kind)
								return hl
							end,
						},
					},
				},
			},
		},
		-- This is experimental (7/20/25).
		signature = {
			enabled = true,
			trigger = { enabled = false }, -- C-k to toggle the signature help
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
			providers = {
				lsp = {
					min_keyword_length = 2,
					score_offset = 0,
				},
				path = {
					min_keyword_length = 0,
				},
				snippets = {
					min_keyword_length = 2,
				},
				buffer = {
					min_keyword_length = 5,
					max_items = 5,
				},
			},
		},
		fuzzy = { implementation = "prefer_rust_with_warning" },
	},
	opts_extend = { "sources.default" },
}
