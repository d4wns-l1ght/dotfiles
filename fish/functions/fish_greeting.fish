function fish_greeting
    if string match "*.ecs.vuw.ac.nz" $hostname --quiet
        pfetch
    else
        fastfetch
    end
end
