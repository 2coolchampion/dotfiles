return {
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "moon",
      on_highlights = function(highlights, colors)
        highlights.Cursor = { bg = "#3e68d7" }
      end,
    },
  },
}
