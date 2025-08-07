return {
	"nvim-treesitter/nvim-treesitter",
	-- NOTE: 'main' will be the future branch to switch to, 7/20/25.
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = {
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
				"markdown",
				"svelte",
				"json",
				"dockerfile",
			},
			sync_install = false,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			disable = function(_, buf)
				-- Big files
				local max_filesize = 100 * 1024 -- 100 KB
				local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
				if ok and stats and stats.size > max_filesize then
					return true
				end
			end,
			indent = {
				enable = true,
			},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<A-o>",
					node_incremental = "<A-o>",
					scope_incremental = "<A-s>",
					node_decremental = "<A-i>",
				},
			},
		})
	end,
}
