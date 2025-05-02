if status is-interactive
    # Commands to run in interactive sessions can go here
end

# set PATH, XDG_CONFIG_HOME, etc
source ~/.config/fish/local_settings.fish

set -gx EDITOR nvim
set -gx MANPAGER "nvim +Man!"

set -gx tide_context_always_display true

source ~/.config/fish/global_functions.fish
source ~/.config/fish/tide_catppuccin.fish
source ~/.config/fish/local_functions.fish
