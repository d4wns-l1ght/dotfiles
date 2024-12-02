if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx PATH /opt/homebrew/bin:/opt/homebrew/bin:/usr/local/bin:$HOME/.cargo/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin

set -gx EDITOR nvim
set -gx XDG_CONFIG_HOME ~/.config
set -gx HOMEBREW_BUNDLE_FILE $XDG_CONFIG_HOME/homebrew/brewfile

source $XDG_CONFIG_HOME/fish/tide_catppuccin.fish

mise activate fish | source
fzf --fish | source
zoxide init fish | source
