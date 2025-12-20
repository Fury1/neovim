return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		-- Global Settings
		vim.lsp.config("*", {})

		local function diagnostic_format(diagnostic)
			return string.format(
				"%s [%s]: %s",
				diagnostic.source,
				diagnostic.code or diagnostic.user_data.lsp.code,
				diagnostic.message
			)
		end

		-- LSP message appearance
		vim.diagnostic.config({
			signs = {
				text = {
					[vim.diagnostic.severity.ERROR] = "",
					[vim.diagnostic.severity.WARN] = "",
					[vim.diagnostic.severity.INFO] = "",
					[vim.diagnostic.severity.HINT] = "󰌵",
				},
			},
			severity_sort = true,
			-- virtual_lines = { current_line = true },
			virtual_text = {
				virt_text_pos = "eol_right_align",
				current_line = false,
				virt_text_hide = true,
				format = diagnostic_format,
			},
			float = {
				format = diagnostic_format,
			},
		})
	end,
	keys = {
		-- This is bound in codeaction.lua cause I prefer the inline popup.
		-- { "<leader>a", vim.lsp.buf.code_action() },
		{
			"<leader>k",
			function()
				local opts = { anchor_bias = "below" }
				vim.lsp.buf.hover(opts)
			end,
		},
	},
}
