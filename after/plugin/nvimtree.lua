vim.g["nvim_tree_ignore"] = { '.git', 'node_modules', '.cache'  }
vim.g["nvim_tree_git_hl"] = "1"
vim.g["nvim_tree_highlight_opened_files"] = "1"
vim.g["nvim_tree_root_folder_modifier"] = "':~'"
vim.g["nvim_tree_width_allow_resize"] = "1"
vim.g["nvim_tree_group_empty"] = "1"
vim.g["nvim_tree_quit_on_open"] = "1"
vim.g["nvim_tree_icon_padding"] = " "
vim.g["nvim_tree_window_picker_exclude"] = {
  filetype = {'fugitive'},
  buftype = {'terminal'}
}
vim.g["nvim_tree_special_files"] = { 'README.md', '.env' }
vim.g["nvim_tree_show_icons"] = {
  git = 0,
  folders = 1,
  files = 0,
  folder_arrows = 0,
}

vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '-', ':NvimTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>pv', ':NvimTreeFindFile<CR>', {noremap = true})

vim.g.nvim_tree_show_icons = {
  git = {
    unstaged = "○",
    staged = "●",
    unmerged = "⊜",
    renamed = "⊙",
    untracked = "⊕",
    deleted = "⊗",
    ignored = "⊘"
  },
  folder = {
    arrow_open = "▾",
    arrow_closed = "▸",
    default = "▸",
    open =  "▾",
    empty = "▸",
    empty_open = "▾",
    symlink = "▸",
    symlink_open = "▾",
  },
  lsp = {
    warning = "⊗",
    error = "⊗",
  }
}

require'nvim-tree'.setup {
  auto_close = true,
  update_focused_file = {
    enable = true
  },
}
