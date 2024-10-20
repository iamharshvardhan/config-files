# # Enable tab completion
# source ~/.udacity-terminal-config/git-completion.bash

# # Change command prompt
# source ~/.udacity-terminal-config/git-prompt.sh

# # colors!
# red="\[\033[38;5;203m\]"
# green="\[\033[38;05;38m\]"
# blue="\[\033[0;34m\]"
# reset="\[\033[0m\]"

# export GIT_PS1_SHOWDIRTYSTATE=1

# # '\u' adds the name of the current user to the prompt
# # '\$(__git_ps1)' adds git-related stuff
# # '\W' adds the name of the current directory
# export PS1="$red\u$green\$(__git_ps1)$blue \W 
# > $reset"


# Enable tab completion
source ~/.udacity-terminal-config/git-completion.bash

# Change command prompt
source ~/.udacity-terminal-config/git-prompt.sh

# Define colors using 256-color mode
red="\[\033[38;5;203m\]"
green="\[\033[38;5;76m\]"
blue="\[\033[38;5;81m\]"
purple="\[\033[38;5;135m\]"
yellow="\[\033[38;5;220m\]"
reset="\[\033[0m\]"

# Git prompt settings
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"

# Add a branch icon and other Git indicators
export PS1="${yellow}${reset} ${red}\u${reset}${purple} ${reset}${green}\W${reset}\n${yellow}\$(__git_ps1)${blue} ↪ \$${reset}"


# Display the current prompt
export PS1="${PS1}${yellow}${reset} "

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

