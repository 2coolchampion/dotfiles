return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Adding minimal placeholders for the missing fields ( in order to avoid warning )
      ensure_installed = {}, -- List of languages you want to ensure are installed, can be empty
      ignore_install = {}, -- List of parsers to ignore installing, can be empty
      sync_install = false, -- Whether to automatically install missing parsers when Neovim starts
      auto_install = true, -- Automatically install missing parsers on startup
      modules = {}, -- Additional module configurations, can be empty if not using any

      -- Add incremental_selection functionality and set keymaps.
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<CR>",
          scope_incremental = "<CR>",
          node_incremental = "<TAB>",
          node_decremental = "<S-TAB>",
        },
      },
    })
  end,
}
