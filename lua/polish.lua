-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

-- Set up custom filetypes
vim.filetype.add {
  extension = {
    foo = "fooscript",
  },
  filename = {
    ["Foofile"] = "fooscript",
  },
  pattern = {
    ["~/%.config/foo/.*"] = "fooscript",
  },
}
-- vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Exit terminal mode" })
-- vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], { desc = "Move left from terminal" })
-- vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], { desc = "Move down from terminal" })
-- vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], { desc = "Move up from terminal" })
-- vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], { desc = "Move right from terminal" })
