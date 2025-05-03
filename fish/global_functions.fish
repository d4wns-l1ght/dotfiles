function :q --description 'Exits the shell'
    exit
end

function cat --wraps=bat --description 'alias cat=bat'
    bat $argv
end

function fish_greeting
    if string match "*.ecs.vuw.ac.nz" $hostname --quiet
        pfetch
    else if set -q TMUX || set -q ZELLIJ || set -q SCREEN
        pfetch
    else
        fastfetch
    end
end

function glog --wraps=git\ log\ --graph\ --abbrev-commit\ --decorate\ --format=format:\'\%C\(bold\ blue\)\%h\%C\(reset\)\ -\ \%C\(bold\ green\)\(\%ar\)\%C\(reset\)\ \%C\(white\)\%s\%C\(reset\)\ \%C\(dim\ white\)-\ \%an\%C\(reset\)\%C\(auto\)\%d\%C\(reset\)\'\ --all --description alias\ glog=git\ log\ --graph\ --abbrev-commit\ --decorate\ --format=format:\'\%C\(bold\ blue\)\%h\%C\(reset\)\ -\ \%C\(bold\ green\)\(\%ar\)\%C\(reset\)\ \%C\(white\)\%s\%C\(reset\)\ \%C\(dim\ white\)-\ \%an\%C\(reset\)\%C\(auto\)\%d\%C\(reset\)\'\ --all
    git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all $argv
end

function mkcd
    mkdir -p "$argv"
    z "$argv"
end

function woman --wraps=man --description feminism
    man $argv
end

function git_rebase_overwrite_author_committer --wraps=git\ -c\ rebase.instructionFormat=\'\%nexec\ GIT_COMITTER_DATE=\"\%cd\"\ GIT_AUTHOR_DATE=\"\%aD\"\ git\ commit\ --amend\ --no-edit\ --reset-author\ --allow-empty\'\ rebase\ -f
    git -c rebase.instructionFormat='%s%nexec GIT_COMMITTER_DATE="%cD" GIT_AUTHOR_DATE="%aD" git commit --amend --no-edit --reset-author --allow-empty' rebase -f $argv
end
