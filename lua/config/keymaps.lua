-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)
-- greatest remap ever
vim.keymap.set("x", "<leader>pp", [["_dP]])

-- next greatest remap ever : asbjornHaland
--vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
--vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- vim.keymap.set("n", "<C-b>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>]", ":><CR>")
vim.keymap.set("n", "<leader>[", ":<<CR>")
vim.keymap.set("v", "<leader>]", ":><CR>")
vim.keymap.set("v", "<leader>[", ":<<CR>")

vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>ta", ":qall<CR>")

-- replace selcted current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set({ "v" }, "<C-f>", '"fy/\\<C-R>f<CR>')

vim.keymap.set("n", "<C-f>", ":noh<CR>")

-- vim.keymap.set('n','<C-f>', '/<C-r><C-w>\>/<C-r><C-w>')
--

-- save file with prettier
vim.keymap.set({ "n", "v" }, "ww", ":Prettier<CR>:w<CR>")

--git lens
vim.g.blamer_enabled = true
vim.g.blamer_delay = 500
vim.g.blamer_prefix = "  "
vim.g.blamer_date_format = "%Y-%m-%d %H:%M:%S"
vim.g.blamer_template = "  <committer> ● <committer-time> , <summary>"
vim.g.blamer_relative_time = true

--remap toggle casesentence
vim.keymap.set("n", "U", "viw~")
