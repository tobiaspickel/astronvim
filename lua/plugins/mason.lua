-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = function(_, opts)
      opts.ensure_installed = vim.tbl_filter(function(s) return s ~= "emmet_ls" end, opts.ensure_installed)
      table.insert(opts.ensure_installed, "tailwindcss")
    end,
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  -- {
  --   "jay-babu/mason-nvim-dap.nvim",
  --   -- overrides `require("mason-nvim-dap").setup(...)`
  --   opts = {
  --     ensure_installed = {
  --       "python",
  --       -- add more arguments for adding more debuggers
  --     },
  --   },
  -- },
}
