return {
  {
    "rmagatti/auto-session",
    config = function()
      -- luacheck: ignore
      require("auto-session").setup({
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        session_lens = {
          load_on_setup = true,
          theme_conf = { border = true },
          previewer = false,
        },
        vim.keymap.set(
          "n",
          "<Leader>s<C-s>",
          require("auto-session.session-lens").search_session,
          { noremap = true, desc = "Search Sessions" }
        ),
      })
    end,
  },
  {
    "folke/persistence.nvim",
    enabled = false,
  },
}
