if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx PATH $PATH /opt/homebrew/bin:/usr/local/bin:/Users/lunawilkes/.cargo/bin:/Applications/Docker.app/Contents/Resources/bin

set -gx EDITOR nvim
set -gx MANPAGER "nvim +Man!"
set -gx XDG_CONFIG_HOME ~/.config
set -gx HOMEBREW_BUNDLE_FILE $XDG_CONFIG_HOME/homebrew/brewfile

set -gx tide_context_always_display true

source $XDG_CONFIG_HOME/fish/tide_catppuccin.fish
source ~/.cargo/env.fish

zoxide init fish | source


# Created by `pipx` on 2025-04-17 08:36:59
set PATH $PATH /Users/lunawilkes/.local/bin
