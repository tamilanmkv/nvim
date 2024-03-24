#!/bin/bash

#packer install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim 2&>/dev/null


# check system linux or mac if its is windows get the hell out
if [ "$(uname)" == "Darwin" ]; then
    brew install neovim ripgrep fzf
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
    sudo apt install neovim ripgrep fzf -y

fi

# backup old config file
mv ~/.config/nvim/ ~/.config/nvim_old 2&>/dev/null
ln -sf $(pwd) ~/.config/nvim


# compile nvim lua plugin
nvim ~/.config/nvim/lua/mkv/packer.lua -c 'so' -c 'autocmd User PackerComplete quitall' -c 'PackerSync' --headless 2&>/dev/null
 
