<p align="center">
  <img src="asset/image.jpeg" alt=" Nvim Logo" width="100" height="100" style="border-radius: 50%;" border-radius="50%">
</p>

<h1 align="center"> NEO VIM</h1>
<p align="center">
  <a href="https://github.com/sponsors/tamilanmkv">
    <img src="https://img.shields.io/badge/Sponsor-%E2%9D%A4-red.svg" alt="Sponsor" />
  </a>
  <a href="https://www.buymeacoffee.com/tamilanmkv">
    <img src="https://img.shields.io/badge/Buy%20me%20a%20coffee-%E2%98%95-yellow.svg" alt="Buy me a coffee" />
  </a>
</p>

## Installation and Setup

To install and set up Nvim, follow these steps:

1. Clone the repository:

   ```sh
   git clone https://github.com/tamilanmkv/nvim.git
   cd nvim
   ```

2. Ensure the setup script has execute permissions and run it:

   ```sh
   chmod +x setup.sh
   ./setup.sh
   ```

   Follow the prompts to complete the setup.

3. If you are using Codium, run `:Codium Auth` to set up the plugin and start using Nvim.

   Reference: [ Nvim plugin for VS Codium](https://github.com/Exafunction/codeium.vim)

## Nvim Shortcuts

1. `:wq` is boring `<leader><leader>`
2. `:q` the hardest thing in the universe `<leader>q`
3. `:qall` quit all windows at once `<leader>ta`
4. `:sp` split window horizontally
5. `:vsp` split window vertically
6. `Ctrl-w + h` move to the window on the left
7. `Ctrl-w + j` move to the window below
8. `Ctrl-w + k` move to the window above
9. `Ctrl-w + l` move to the window on the right
10. `:only` keep only the current window, close all others
11. `Ctrl-w + =` make all windows equal size
12. `:resize +/-N` resize the current window vertically
13. `:vertical resize +/-N` resize the current window horizontally
14. `Ctrl-w + r` rotate windows clockwise
15. `Ctrl-w + x` exchange current window with next one
16. `Ctrl-w + H` move window to far left
17. `Ctrl-w + J` move window to bottom
18. `Ctrl-w + K` move window to top
19. `Ctrl-w + L` move window to far right
20. `:bnext` go to the next buffer
21. `:bprev` go to the previous buffer
22. `:bd` close the current buffer

## Additional Shortcuts

1. `<leader>tr` Telescope Resume last session
2. `<leader>ff` Telescope find files
3. `<leader>fg` File grep
4. `<leader>fs` Find String
5. `<leader>pv` move pointer to file manager
6. `<C-p>` when in normal mode, press C-p to switch git files
7. `<leader>c` Code rain fall
8. `<leader>tn` Open a new tab
9. `<leader>tc` Close current tab
10. `<leader>tl` Move to next tab
11. `<leader>tj` Move to previous tab
12. `<leader>ch` Change theme

## File Manager

1. `a` create a new file
2. `TAB` select file preview
3. `return` enter file
4. `<C-n>` hide the file manager bar
5. `C-]` Change directory (useful with fuzzy finder)

## Search Filters

1. `/foo` search by typing current file or `<C-f>`
2. `/\%Vfoo` search inside the selected lines or `<leader>vf`
3. Jump to the next match `<C-n>`
4. Jump to the previous match `<C-p>`
5. Jump based on word `<C-w>`
6. Lightspeed jump after cursor `s`
7. Lightspeed jump before cursor `S`
