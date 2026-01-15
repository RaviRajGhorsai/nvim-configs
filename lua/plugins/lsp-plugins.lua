local on_attach = function(client, bufnr)
--	vim.lsp.completion.enable(true, client.id, bufnr, {
--		autotrigger = true,
--	})

	local opts = { buffer = bufnr }

	vim.keymap.set("n", "K", function()
		vim.lsp.buf.hover()
	end, opts)

	vim.keymap.set("n", "R", function()
		vim.lsp.buf.rename()
	end, opts)

	vim.keymap.set("n", "gd", function()
		vim.lsp.buf.definition()
	end, opts)

	vim.keymap.set({ "n", "v" }, "<leader>ca", function()
		vim.lsp.buf.code_action()
	end, opts)
end

return {
	{
		"mason-org/mason.nvim",

		config = function()
			require("mason").setup()
		end,
	},

	{
		"mason-org/mason-lspconfig.nvim",

		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "pyright", "gopls" },
			})
		end,
	},

	{
		"neovim/nvim-lspconfig",

		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("pyright", {
				on_attach = on_attach,
				capabilities = capabilities,
			})

			vim.lsp.config("lua_ls", {
				on_attach = on_attach,
				capabilities = capabilities,
			})

			vim.lsp.config("gopls", {
				on_attach = on_attach,
                capabilities = capabilities,
			})

			-- Enable servers
			vim.lsp.enable("pyright")
			vim.lsp.enable("lua_ls")
			vim.lsp.enable("gopls")
		end,
	},
}
