require'nvim-treesitter.configs'.setup {
  ensure_installed = { "c","javascript","python","bash","typescript", "lua", "vim", "vimdoc", "query","css","html","json","yaml","toml" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

