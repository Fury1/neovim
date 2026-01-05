return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		enable = true,
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter").setup({
				-- Directory to install parsers and queries to (prepended to `runtimepath` to have priority).
				install_dir = vim.fn.stdpath("data") .. "/site",
			})

			local languages = {
				"c", --*
				"lua", --*
				"vim", --*
				"vimdoc", --*
				"query", --*
				"markdown", --*
				"markdown_inline", --*
				-- Every thing above are recommended defaults, do not remove.
				"gitignore",
				"bash",
				"javascript",
				"typescript",
				"html",
				"css",
				"yaml",
				"toml",
				"rust",
				"cpp",
				"python",
				"svelte",
				"json",
				"dockerfile",
			}
			-- Async install
			require("nvim-treesitter").install(languages)

			vim.api.nvim_create_autocmd("FileType", {
				group = vim.api.nvim_create_augroup("treesitter.setup", {}),
				callback = function(args)
					local buf = args.buf
					local filetype = args.match

					-- Mechanism to avoid running on buffers that do not
					-- correspond to a language (like oil.nvim buffers).
					--
					-- This checks if a parser exists for the current language.
					local language = vim.treesitter.language.get_lang(filetype) or filetype
					if not vim.treesitter.language.add(language) then
						return
					end

					-- Folds
					vim.wo[0][0].foldexpr = "v:lua.vim.treesitter.foldexpr()"
					vim.wo[0][0].foldmethod = "expr"

					-- Highlighting
					vim.treesitter.start(buf, language)

					-- Indent
					vim.bo[buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
				end,
			})
		end,
	},
	{
		"MeanderingProgrammer/treesitter-modules.nvim",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		---@module 'treesitter-modules'
		---@type ts.mod.UserConfig
		opts = {
			incremental_selection = {
				enable = true,
				-- Set disable =`false` to disable individual mapping
				-- node_decremental captures both node_incremental and scope_incremental.
				disable = false,
				keymaps = {
					init_selection = "<A-o>",
					node_incremental = "<A-o>",
					scope_incremental = "<A-s>",
					node_decremental = "<A-i>",
				},
			},
		},
	},
}
