return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping["<Tab>"] = cmp.mapping.confirm({ select = true }) -- Use Tab to confirm completion
      opts.mapping["<CR>"] = nil -- Disable Enter key for confirming completion
      return opts
    end,
  },
}
