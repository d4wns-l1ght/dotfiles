function fishcf --wraps='cd ~/.config/fish && nvim config.fish' --wraps='nvim ~/.config/fish/config.fish' --description 'alias fishcf=nvim ~/.config/fish/config.fish'
  nvim ~/.config/fish/config.fish $argv
        
end
