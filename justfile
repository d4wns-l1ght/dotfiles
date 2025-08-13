default: 
	@just --list

# Clone neovim config into the right directory
nvim:
	git clone git@codeberg.org:NVX/neovim-config
	mv neovim-config nvim

# Update terminfo to include 'tmux-256color'. See tmux/tmux.conf for details
tmux-terminfo:
	curl -LO https://invisible-island.net/datafiles/current/terminfo.src.gz && gunzip terminfo.src.gz
	/usr/bin/tic -xe tmux-256color terminfo.src
	rm terminfo.src
	
tmux:
	mkdir ~/.config/tmux/plugins ~/.config/tmux/themes
	git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
	git clone https://github.com/catppuccin/tmux.git ~/.config/tmux/themes/catppuccin/tmux
	tmux source ~/.config/tmux/tmux.conf
	@echo "use <c-a>I to fetch plugins"
