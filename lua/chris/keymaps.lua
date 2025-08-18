vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Remap 'kj' to to get back to normal mode more generally.
vim.keymap.set("t", "kj", "<C-\\><C-n>")
vim.keymap.set("i", "kj", "<Esc>")
vim.keymap.set("v", "kj", "<Esc>")
vim.keymap.set("c", "kj", "<C-c>")

-- Clear search highlight
vim.keymap.set("n", "<leader>;", "<cmd>nohlsearch<CR>")

-- Move stuff
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Nav
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Keep pasting from driving me nuts,
-- delete to the void register then paste, retain original yank.
vim.keymap.set("x", "<leader>p", '"_dp')

-- Keep vim and system clipboards separate on yank
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

-- Delete to the void
vim.keymap.set("n", "<leader>_", '"_d')
vim.keymap.set("v", "<leader>_", '"_d')

-- Yank and keep cursor position
vim.keymap.set("v", "y", "mmy`m")

-- Window resizing
vim.keymap.set("n", "<C-Up>", "<cmd>resize +5<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -5<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +5<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -5<CR>")

-- Tab switches
vim.keymap.set("n", "<leader>tN", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<leader>tn", "<cmd>tabNext<CR>")
vim.keymap.set("n", "<leader>tp", "<cmd>tabprevious<CR>")
vim.keymap.set("n", "<leader>tC", "<cmd>tabclose<CR>")

-- Netrw
-- vim.keymap.set("n", "<leader>e", "<cmd>:Ex<CR>")

-- Make current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
