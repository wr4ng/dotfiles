# My Dotfiles!

## Stow
I'm using `stow` to mange symlinks from `~/dotfiles` to their respective locations. Installing `stow` on arch (btw):
```shell
sudo pacman -S stow
```
When adding new files (or setting up my dotfiles), place the repo at `$HOME/dotfiles` and then run:
```shell
stow .
```
to generate the symlinks. Anything in `.stow-local-ignore` is ignored (like `.git` and `README.md` etc.).
