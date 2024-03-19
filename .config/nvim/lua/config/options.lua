-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Undercurl
-- vim.cmd([[let &t_Cs = "<ESC>[4:3m]"]])
-- vim.cmd([[let &t_Ce = "<ESC>[4:0m]"]])

vim.o.foldmethod = "syntax"

-- Search Uppercase only when using in search,
-- otherwise search both by default
vim.opt.smartcase = true

-- Beak lines on word not character basis
vim.opt.linebreak = true
