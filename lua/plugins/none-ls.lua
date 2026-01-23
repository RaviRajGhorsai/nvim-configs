return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

				null_ls.builtins.formatting.ruff,
				null_ls.builtins.diagnostics.ruff,

				-- Python formatter
				--null_ls.builtins.formatting.black.with({
				--    filetypes = { "python" },

				--}),
				--null_ls.builtins.formatting.isort.with({
				--    filetypes = { "python" },

				--}),

				-- Python linter
				--null_ls.builtins.diagnostics.flake8.with({
				--    filetypes = { "python" },

				--}),
			},
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = false })
		end, { desc = "Format file" })
	end,
}
