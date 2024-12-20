-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCore provides a central place to modify mappings, vim options, autocommands, and more!
-- Configuration documentation can be found with `:h astrocore`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics_mode = 3, -- diagnostic mode on start (0 = off, 1 = no signs/virtual text, 2 = no virtual text, 3 = on)
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relative number
        number = true, -- sets vim.opt.number
        spell = true, -- sets vim.opt.spell
        spelllang = "en_us",
        spelloptions = "camel",
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = true, -- sets vim.opt.wrap
        showtabline = 0,
      },
      g = { -- vim.g.<key>
        -- configure global vim variables (vim.g)
        -- NOTE: `mapleader` and `maplocalleader` must be set in the AstroNvim opts or before `lazy.setup`
        -- This can be found in the `lua/lazy_setup.lua` file
      },
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        -- second key is the lefthand side of the map

        -- navigate buffer tabs
        -- [":"] = { ":Telescope cmdline<CR>" },
        ["q"] = { "<Esc>" },
        ["x"] = { '"_x' },

        ["<leader>xc"] = { "<cmd>ZenMode <CR>" },
        ["<leader>b"] = { name = "Buffers" },
        ["<C-e>"] = {
          "<cmd>Telescope oldfiles <CR>",
        },
        ["<leader>ee"] = {
          function() require("dropbar.api").pick() end,
        },
        ["<leader>fd"] = { "<cmd>Telescope dir live_grep<CR>" },
        -- tables with just a `desc` key will be registered with which-key if it's installed
        -- this is useful for naming menus
        -- ["<Leader>b"] = { desc = "Buffers" },

        -- setting a mapping to false will disable it
        -- ["<C-S>"] = false,

        -- ["<leader>sc"] = { "<cmd>:mkspell! ~/.config/nvim/spell/en.utf-8.add<CR>" },
        ["<leader>sc"] = {
          function()
            vim.cmd ":mkspell! ~/.config/nvim/spell/en.utf-8.add"
            vim.cmd ":set spell"
            vim.cmd ":set spelllang=en"
          end,
        },
      },
    },
  },
}
