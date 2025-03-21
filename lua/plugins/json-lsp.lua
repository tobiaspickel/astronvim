return {
  -- Disable package-info
  {
    "vuki656/package-info.nvim",
    enabled = false,
  },
  -- Disable gitsigns
  {
    "lewis6991/gitsigns.nvim",
    enabled = false,
  },
  -- Disable jsonls
  {
    "AstroNvim/astrolsp",
    opts = function(_, opts)
      if opts.handlers then
        opts.handlers.jsonls = false
      end
      return opts
    end,
  }
}