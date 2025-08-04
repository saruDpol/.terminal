# ~/.bash_profile

# Source the .bashrc file for interactive shells
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Set default editor to nano (or vim if you prefer)
export VISUAL=vim
export EDITOR=vim

# Set up the terminal for color support
export CLICOLOR=1

# Set terminal title to the current directory (if possible)
case $TERM in
xterm*|rxvt*|gnome-terminal*|konsole*)
    PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
    ;;
esac

# Ensure that the terminal loads with `nano` if needed for editing files
alias vim="vim -c"

. "$HOME/.local/bin/env"
