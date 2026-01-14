return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = true,
    event = "BufRead",
    config = function()
      require("nvim-treesitter").setup({
        ensure_installed = { "lua", "javascript", "python", "go", },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
