set rosewater F5E0DC
set flamingo F2CDCD
set pink F2C2E7
set mauve CBA6F7
set red F38BA8
set maroon EBA0AC
set peach FAB387
set yellow F9E2AF
set green A6E3A1
set teal 94E2D5
set sky 89DCEB
set sapphire 74C7EC
set blue 89B4FA
set lavender B4BEFE
set text CDD6F4

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
