vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)

-- python excute with <leader>r
vim.keymap.set('n', '<leader>rp', ":w<CR>:!python3 %<CR>")

-- nodejs excute with <leader>rn
vim.keymap.set('n', '<leader>rn', ":w<CR>:!node %<CR>")


vim.keymap.set('n',"<leader>/", ":Commentary<cr>")
vim.keymap.set('v',"<leader>/", ":Commentary<cr>")
vim.keymap.set('n',"<leader>]", ":><CR>")
vim.keymap.set('n',"<leader>[", ":<<CR>")
vim.keymap.set('v',"<leader>]", ":><CR>")
vim.keymap.set('v',"<leader>[", ":<<CR>")
vim.keymap.set('n',"<leader>wq", ":wq<CR>")
vim.keymap.set('n',"<leader>q", ":q<CR>")
