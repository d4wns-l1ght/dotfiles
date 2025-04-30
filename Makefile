zellij_plugins:
	mkdir -p ~/.config/zellij/plugins && \
		wget -nc -P ~/.config/zellij/plugins/ "https://github.com/cristiand391/zj-quit/releases/download/0.3.1/zj-quit.wasm" && \
		wget -nc -P ~/.config/zellij/plugins/ "https://github.com/imsnif/monocle/releases/download/v0.100.2/monocle.wasm" && \
		wget -nc -P ~/.config/zellij/plugins/ "https://github.com/hiasr/vim-zellij-navigator/releases/download/0.2.1/vim-zellij-navigator.wasm"
