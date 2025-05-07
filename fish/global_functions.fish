function :q --description 'Exits the shell'
    exit
end

function cat --wraps=bat --description 'alias cat=bat'
    bat $argv
end

function fish_greeting
    if set -q SSH_CLIENT || set -q SSH_SHELL
        pfetch
    else if set -q TMUX || set -q ZELLIJ || set -q SCREEN
        pfetch
    else if command -v tmuxinator 2>&1 >/dev/null && test -f ~/.config/tmuxinator/home.yml
        tmuxinator home
    else
        fastfetch
    end
end

function glog --wraps=git\ log\ --graph\ --abbrev-commit\ --decorate\ --format=format:\'\%C\(bold\ blue\)\%h\%C\(reset\)\ -\ \%C\(bold\ green\)\(\%ar\)\%C\(reset\)\ \%C\(white\)\%s\%C\(reset\)\ \%C\(dim\ white\)-\ \%an\%C\(reset\)\%C\(auto\)\%d\%C\(reset\)\'\ --all --description alias\ glog=git\ log\ --graph\ --abbrev-commit\ --decorate\ --format=format:\'\%C\(bold\ blue\)\%h\%C\(reset\)\ -\ \%C\(bold\ green\)\(\%ar\)\%C\(reset\)\ \%C\(white\)\%s\%C\(reset\)\ \%C\(dim\ white\)-\ \%an\%C\(reset\)\%C\(auto\)\%d\%C\(reset\)\'\ --all
    git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)' --all $argv
end

function mkcd
    mkdir -p "$argv"
    cd "$argv"
end

function mkz
    mkdir -p "$argv"
    z "$argv"
end

function woman --wraps=man --description feminism
    man $argv
end

function git_rebase_overwrite_author_committer --wraps=git\ -c\ rebase.instructionFormat=\'\%nexec\ GIT_COMITTER_DATE=\"\%cd\"\ GIT_AUTHOR_DATE=\"\%aD\"\ git\ commit\ --amend\ --no-edit\ --reset-author\ --allow-empty\'\ rebase\ -f
    git -c rebase.instructionFormat='%s%nexec GIT_COMMITTER_DATE="%cD" GIT_AUTHOR_DATE="%aD" git commit --amend --no-edit --reset-author --allow-empty' rebase -f $argv
end

abbr -a --position command ta tmux a -t

function pf 
    clear; pfetch
end

function switch_or_start_tmux_session
    set selected_session (begin
        tmux ls -F '#S'
        tmuxinator list | sed -n 2p | tr -s '[:blank:]' '\n'
    end | sort -u | fzf)

    if ! string length -q -- $selected_session
        return
    end

    if tmux ls -F '#S' | rg $selected_session >/dev/null
        tmux switch-client -t $selected_session
    else if tmuxinator debug $selected_session >/dev/null
        tmuxinator start $selected_session
    else
        tmux display-message "No session selected_session found"
    end
end


function smux --description 'Creates or attaches to a tmux server over ssh' --wraps=ssh
    ssh $argv -t 'tmux attach-session || tmux'
end

function svim --description 'Opens oil-ssh to a given address'
    nvim oil-ssh://$argv
end
