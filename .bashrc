# Check if running interactively. If not, exit
[[ $- != *i* ]] && return

# ───────────────────────────────
# 🎨 Color Palette (Zen Style)
# ───────────────────────────────
SHAOLIN_ORANGE='\[\033[38;5;214m\]'  # Monk robe orange
JAPANESE_BLUE='\[\033[38;5;32m\]'    # Deep Zen blue
JAPANESE_RED='\[\033[38;5;131m\]'
GOLD='\[\033[38;5;178m\]'            # Golden tones
WHITE='\[\033[38;5;250m\]'           # Light gray (clean look)
RESET='\[\033[0m\]'                  # Reset to default

# ───────────────────────────────
# 📂 Directory Navigation Shortcuts
# ───────────────────────────────
alias ..="cd .."
alias ...="cd ../.."
alias docs="cd ~/Documents"
alias desk="cd ~/Desktop"
# Quick access to edit and reload Bash config
alias ebash="vim ~/.bashrc"
alias ubash="source ~/.bashrc"
alias root="cd ~"
alias cl="clear && ll"

git() {
  if [[ "$1" == "rm" ]]; then
    shift
    command git rm --cached "$@"
  else
    command git "$@"
  fi
}

net() {
    local brave_path="C:/Users/ptorn/AppData/Local/BraveSoftware/Brave-Browser/Application/brave.exe"
    case "$1" in
        google) "$brave_path" "https://www.google.com" ;;
        youtube) "$brave_path" "https://www.youtube.com" ;;
        github) "$brave_path" "https://www.github.com" ;;
        chatgpt) "$brave_path" "https://chat.openai.com" ;;
        btmail) "$brave_path" "https://mail.google.com/mail/u/1/#inbox" ;;
        btdrive) "$brave_path" "https://drive.google.com/drive/u/1/starred" ;;
        lab) "$brave_path" "https://drive.google.com/drive/u/1/folders/0BzxMQ0_GzvisWF9hb1dkdzI0bjA?resourcekey=0-Hjgxu93MV5aoBy6fzjwccQ" ;;
        *) echo "Usage: net {google|youtube|github|chatgpt|btmail|btdrive|lab}" ;;
    esac
}
alias btmail="net btmail"
alias btdrive="net btdrive"
alias lab="net lab"


# ───────────────────────────────
# 🛠️ Utility Aliases
# ───────────────────────────────
alias ls='ls --color=auto'        # Enable color for ls
alias ll='ls -la'                 # List with details
alias la='ls -A'                  # List all except . and ..
alias grep="grep --color=auto"    # Highlight grep results

alias update="sudo apt-get update && sudo apt-get upgrade"
alias gs="git status"
alias gp="git push"
alias gl="git pull"

# ───────────────────────────────
# 🏯 Zen-Inspired Bash Prompt
# ───────────────────────────────
export PS1="\n\
${SHAOLIN_ORANGE}╭───╼ ${GOLD}saruDpol ${WHITE}| \D{%Y-%m-%d %H:%M:%S} \n\
${JAPANESE_BLUE}╰─► ${WHITE}\w${RESET} \n\$ "

. "$HOME/.local/bin/env"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
