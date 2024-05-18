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
## zsh
Configuration in `.zshrc`. I'm using `oh-my-zsh`. For installing see: https://ohmyz.sh/.

Installation of `oh-my-zsh` plugins:
```shell
# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting   

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions       

# powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```


I've aliased `ls` to `eza ...` with options for color and grouping. Aliases `cd` to `zoxide` (using shell integration).

Install packages used in `.zshrc`:
```shell
sudo pacman -S eza ttf-jetbrains-mono-nerd alacritty zoxide
```
