-- Add compound environment file name detection for .env configs.
vim.filetype.add({
	pattern = {
		["%.env.example"] = { "conf", { priority = 1 } },
		[".*%.env%..*"] = "sh",
	},
})
