if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx TERM xterm-256color
# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

set fish_greeting ""

#ANDROID
set -Ux ANDROID_HOME $HOME/Android/Sdk
set -Ua fish_user_paths dev/flutter/bin/

set -U fish_user_paths $ANDROID_HOME/emulator $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/tools-bin $fish_user_paths
set -U fish_user_paths $ANDROID_HOME/platform-tools $fish_user_paths
alias ls "lsd"
alias lst "lsd --tree"
alias vim "nvim"

rvm default
rvm default
eval (/home/linuxbrew/.linuxbrew/bin/brew shellenv)
#oh-my-posh init fish --config ~/.config/powershell/edmond.omp.json | source
