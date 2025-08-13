return {
	cmd = { "ruff", "server" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "ruff.toml", ".ruff.toml", ".git" },
	init_options = {
		settings = {
			configurationPreference = "filesystemFirst",
			lineLength = 88,
			lint = {
				enable = true,
				select = { "E", "W", "F" },
			},
		},
	},
}
