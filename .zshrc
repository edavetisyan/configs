# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#**************************************************
#************************           ***************
#************************ ZSH THEME ***************
#************************           ***************
#**************************************************

#I commented zsh theme, because I use powerline
#ZSH_THEME="agnoster"
    zstyle ':omz:update' mode auto      # update automatically without asking
# Uncomment the following line to change how often to auto-update (in days).
    zstyle ':omz:update' frequency 13

#******************************************************
#************************               ***************
#************************   OMZ PLUGINS ***************
#************************               ***************
#******************************************************
plugins=(git wakatime zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

#preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='nvim'
 else
   export EDITOR='nvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
#**************************************************
#************************           ***************
#************************   EMACS   ***************
#************************           ***************
#**************************************************

export PATH="$HOME/.emacs.d/bin:$PATH"

#**************************************************
#************************           ***************
#************************  FLUTTER  ***************
#************************           ***************
#**************************************************

export PATH="$PATH:/home/zick/flutter/flutter/bin"

#**************************************************
#************************           ***************
#************************  ANDROID  ***************
#************************           ***************
#**************************************************

export ANDROID_SDK_ROOT=/home/zick/Android/Sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

#************************************************
#************************         ***************
#************************ ALIASES ***************
#************************         ***************
#************************************************

##some commands
alias ls="exa --icons"
alias lst="exa --tree --icons"
alias ide="bash ide.sh"
alias idev="bash idev.sh"
alias vi="nvim"
alias emacs="emacsclient -c -a 'emacs'"
alias update="sudo pacman -Syyu"
alias updall="yay -Syyu"
alias hw="hwinfo --short"
## Colorize the grep command output for ease of use (good for log files)##
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
#SHELL SCRIPTS
#path to z 
. /usr/share/z/z.sh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
