return {
    { 
        "mason-org/mason.nvim",

        config = function()
            require("mason").setup()
        end

    },

    {
         "mason-org/mason-lspconfig.nvim",

         config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {"lua_ls", "pyright", "gopls"}
            })
         end

    },

    {
        "neovim/nvim-lspconfig",

        config = function()
            vim.lsp.config("lua_ls", {})
            vim.lsp.config("pyright", {})
            vim.lsp.config("gopls", {})


            vim.lsp.enable("lua_ls")
            vim.lsp.enable("pyright")
            vim.lsp.enable("gopls")


        end
    
    }


}
