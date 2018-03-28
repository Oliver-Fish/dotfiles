# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Key bindings fix
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#Golang
export GOROOT=/usr/local/go
export GOPATH=~/Projects/Go

#alias goc='go clean'
#alias gob='go build'
#alias gog='go get'
#alias goi='go install'
#alias gor='go run'
####

#NVM Imports
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
####

#Powerline Go
function powerline_precmd() {
    PS1="$(powerline-go -error $? -shell zsh)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
####

#Antibody start
source <(antibody init)
antibody bundle < ~/.dotfiles/antibody/bundles.txt
####

#Tmux
#alias ta='tmux attach -t'
#alias tad='tmux attach -d -t'
#alias ts='tmux new-session -s'
#alias tl='tmux list-sessions'
#alias tksv='tmux kill-server'
#alias tkss='tmux kill-session -t'

#General
#alias .="cd ../"
#alias ..="cd ../../"
#alias ...="cd ../../../"
#alias ....="cd ../../../../"

#alias l="ls -lah"
#alias cls="clear"
#alias clipboard="xclip -selection clipboard"
#alias vim=nvim
#alias wifi="sudo wifi-menu"
#alias term="nohup xterm > /dev/null &"
#export GDK_SCALE=2

#This Should always be run last so we can use any defined env vars above
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
####
source /usr/share/autojump/autojump.zsh
