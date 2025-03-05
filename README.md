# dotfiles
`stow -n -v -S .` from .dotfiles directory first
if ok then
`stow -v -S .` to confirm

or to stow only one config
`stow -nv -d .config/ -t ~/.config/nvim -S nvim`
`stow -v -d .config/ -t ~/.config/nvim -S nvim`

or manually
`ln -s ~/.dotfiles/.gitconfig ~/.gitconfig`
