nvimconf() {
	cd ~/.config/nvim
}

dotnvimconf() {
	cd ~/dotfiles/nvim/.config/nvim/
}

nvimswap() {
	cd ~/.local/state/nvim/swap
}

lazyvim() {
	cd ~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/
}

alias nv='flatpak run io.neovim.nvim'
