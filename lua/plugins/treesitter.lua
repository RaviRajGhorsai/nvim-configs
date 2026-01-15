return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = true,
    event = "BufRead",
    config = function()
      require("nvim-treesitter").setup({
        auto_install =true, 
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  }
