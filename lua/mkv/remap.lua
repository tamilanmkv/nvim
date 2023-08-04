vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv",vim.cmd.Ex)

-- python excute with <leader>r
vim.keymap.set('n', '<leader>rp', ":w<CR>:!python3 %<CR>")

-- nodejs excute with <leader>rn
vim.keymap.set('n', '<leader>rn', ":w<CR>:!node %<CR>")


--rust execute with <leader>rr
vim.keymap.set('n','<leader>rr', ":w<CR>:!cargo run<CR>")


vim.keymap.set('n',"<leader>/", ":Commentary<cr>")
vim.keymap.set('v',"<leader>/", ":Commentary<cr>")

-- greatest remap ever
vim.keymap.set("x", "<leader>pp", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)



vim.keymap.set('n',"<leader>]", ":><CR>")
vim.keymap.set('n',"<leader>[", ":<<CR>")
vim.keymap.set('v',"<leader>]", ":><CR>")
vim.keymap.set('v',"<leader>[", ":<<CR>")

vim.keymap.set('n',"<leader>wq", ":wq<CR>")
vim.keymap.set('n',"<leader>q", ":q<CR>")

-- replace selcted current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")


vim.keymap.set({'n','v'}, '<C-f>', "\"fy/\\<C-R>f<CR>")

vim.keymap.set('n','<C-f>', ":noh<CR>")

-- vim.keymap.set('n','<C-f>', '/<C-r><C-w>\>/<C-r><C-w>')
--
--selected word stdout to bard-cli search
vim.keymap.set('v','<leader>g', [["*y:%!bard-cli search <C-R>*<CR>]])

-- selected word stdout to bard-cli search
-- save file with prettier
vim.keymap.set({'n','v'},'w', ":Prettier<CR>:w<CR>")
