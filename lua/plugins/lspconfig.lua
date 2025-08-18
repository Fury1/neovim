return {
	"neovim/nvim-lspconfig",
	lazy = false,
	config = function()
		-- Global Settings
		vim.lsp.config("*", {})

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
			-- virtual_lines = { current_line = true },
			virtual_text = {
				source = true,
				virt_text_pos = "eol_right_align",
				current_line = false,
				virt_text_hide = true,
			},
			severity_sort = true,
		})

		-- Only override gd & gD when there is an LSP available
		-- with the functionality, otherwise, keep Neovims best match.
		vim.api.nvim_create_autocmd("LspAttach", {
			callback = function(ev)
				local client = vim.lsp.get_client_by_id(ev.data.client_id)
				if client == nil then
					return
				end
				if client:supports_method("textDocument/typeDefinition") then
					vim.keymap.set("n", "gd", function()
						vim.lsp.buf.type_definition()
					end)
				end
				if client:supports_method("textDocument/declaration") then
					vim.keymap.set("n", "gD", function()
						vim.lsp.buf.declaration()
					end)
				end
			end,
		})
	end,
	keys = {
		-- This is bound in codeaction.lua cause I prefer the inline popup.
		-- { "<leader>a", vim.lsp.buf.code_action() },
		{
			"<leader>k",
			function()
				local opts = { anchor_bias = "below" }
				-- Focus the window by default by calling 2x.
				vim.lsp.buf.hover(opts)
				vim.lsp.buf.hover(opts)
			end,
		},
	},
}
