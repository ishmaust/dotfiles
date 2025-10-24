require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "H", "^")
map("n", "L", "$")
map("n", "J", "}")
map("n", "K", "{")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
