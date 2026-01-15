return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,

                -- Python formatter
                null_ls.builtins.formatting.black,
                null_ls.builtins.formatting.isort,

                -- Python linter
                null_ls.builtins.diagnostics.flake8,

			},
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format()
		end, {})
	end,
}
