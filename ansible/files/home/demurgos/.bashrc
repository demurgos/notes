# Better prompt for a normal user
color_prompt=yes
if [ "$color_prompt" = yes ]; then
    PS1='\e[32m\u@\h\e[0m \e[1m\w\e[0m\n\$ '
else
    PS1='\u@\h \w\n\$ '
fi
unset color_prompt

# ISO time in `ls`
export TIME_STYLE=long-iso

export LS_OPTIONS='--color=auto'
# `dircolors` generates a command to export the `LS_COLORS` environment variable.
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls -al'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export WASMTIME_HOME="$HOME/.wasmtime"

export PATH="$WASMTIME_HOME/bin:$PATH"
