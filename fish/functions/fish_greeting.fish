function fish_greeting
    if string match "*.ecs.vuw.ac.nz" $hostname --quiet
        pfetch
    else if set -q TMUX || set -q ZELLIJ || set -q SCREEN
        pfetch
    else
        fastfetch
    end
end
