vim.g.mapleader = " "
vim.opt.shiftwidth = 4    -- Indent by 4 spaces
vim.opt.tabstop = 4       -- Tab key inserts 4 spaces
vim.opt.expandtab = true  -- Convert tabs to spaces (important for Python!)
vim.opt.softtabstop = 4   -- Backspace deletes 4 spaces
vim.opt.autoindent = true -- Keep indentation from previous line
vim.opt.number = true     -- Line Number is visible
--vim.opt.relativenumber = true -- Relative line number is set
vim.keymap.set("v", "<leader>y", ":'<,'>w !wl-copy<CR>", {
  silent = true,
  desc = "Copy selection to system clipboard (wl-copy)",
})

