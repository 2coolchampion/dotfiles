-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decremment
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Select automatically
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Split window
keymap.set("n", "ss", ":split | buffer #<CR>", opts)
keymap.set("n", "sv", ":vsplit | buffer #<CR>", opts)

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

-- Toggle line wrapping
keymap.set("n", "<A-z>", ":set wrap!<CR>", opts)

-- TODO: Delete unused buffers
--
-- Close hidden buffers
-- local function close_hidden_buffers()
--   local open_buffers = {}
--   -- Collect buffer numbers of all buffers displayed in windows
--   for _, win in ipairs(vim.api.nvim_list_wins()) do
--     local buf = vim.api.nvim_win_get_buf(win)
--     open_buffers[buf] = true
--   end
--
--   -- Close buffers that are not displayed in any window
--   for _, buf in ipairs(vim.api.nvim_list_bufs()) do
--     if not open_buffers[buf] and vim.api.nvim_buf_is_loaded(buf) then
--       vim.api.nvim_buf_delete(buf, { force = true })
--     end
--   end
-- end

-- keymap.set("n", "<leader>bu", close_hidden_buffers, opts)
--
-- -- Register keymaps with descriptions using whichkey
-- local wk = require("which-key")
-- wk.register({
--   ["<leader>bu"] = { close_hidden_buffers, "Close Hidden Buffers" },
-- }, opts)
