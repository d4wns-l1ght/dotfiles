source $XDG_CONFIG_HOME/fish/catppuccin_mocha_lib.fish

# cmd_duration
set -g tide_cmd_duration_color $rosewater

# character (the little arrow thing)
set -g tide_character_color $green
set -g tide_character_color_failure $red

# context
set -g tide_context_always_display true
set -g tide_context_color_default $flamingo

# git
set -g tide_git_color_branch $green
set -g tide_git_color_conflicted $maroon
set -g tide_git_color_dirty $peach
set -g tide_git_color_operation $red
set -g tide_git_color_staged $peach
set -g tide_git_color_stash $green
set -g tide_git_color_untracked $sapphire
set -g tide_git_color_upstream $green

# jobs
# TODO: figure this out - yellow?? also flamingo?

# os
set -g tide_os_color $text

# time
set -g tide_time_color $lavender

# pwd
set -g tide_pwd_color_anchors $sky
set -g tide_pwd_color_dirs $sapphire
set -g tide_pwd_color_truncated_dirs $blue
