vim.g.mapleader = " "

-- python excute with <leader>r
vim.keymap.set("n", "<leader>rp", ":w<CR>:!python3 %<CR>")

-- nodejs excute with <leader>rn
vim.keymap.set("n", "<leader>rn", ":w<CR>:!node %<CR>")

--rust execute with <leader>rr
vim.keymap.set("n", "<leader>rr", ":w<CR>:!cargo run<CR>")

-- greatest remap ever
