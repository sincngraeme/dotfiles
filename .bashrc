#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# if uwsm check may-start && uwsm select; then
#     exec uwsm start default
#     sleep 5s
# fi

export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
[ "$STARSHIP_DISABLE" = "true" ] || eval "$(starship init bash)" # Do not run if the variable is set
. "$HOME/.cargo/env"
