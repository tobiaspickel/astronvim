---@type LazySpec
return {
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewToggleFiles", "DiffviewFocusFiles", "DiffviewFileHistory" },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Diffview open" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", desc = "Diffview file history" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview branch history" },
      { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Diffview close" },
    },
    opts = {},
  },
}
