# Path to your oh-my-zsh installation.
export ZSH="/home/valdeg/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
# Used Oh-my-zsh plugins
plugins=(git)

# User configuration

# Enabled prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon root_indicator host dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs)

# OS Icon
POWERLEVEL9K_OS_ICON_BACKGROUND="231"
POWERLEVEL9K_OS_ICON_FOREGROUND="009"

# Host
POWERLEVEL9K_HOST_TEMPLATE="me@%2m"
POWERLEVEL9K_HOST_ICON="\uF109 "
POWERLEVEL9K_SSH_ICON="\uF489 "
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="011"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="236"
POWERLEVEL9K_HOST_LOCAL_BACKGROUND="011"
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="236"

# Dir
POWERLEVEL9K_DIR_ETC_BACKGROUND='004'
POWERLEVEL9K_DIR_ETC_FOREGROUND='236'
POWERLEVEL9K_DIR_HOME_BACKGROUND='006'
POWERLEVEL9K_DIR_HOME_FOREGROUND='236'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='none'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='236'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='004'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='236'

# Background jobs indicator
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS=true
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="003"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="236"

# Status indicator
POWERLEVEL9K_STATUS_HIDE_SIGNAME="false"
POWERLEVEL9K_STATUS_CROSS="true"
POWERLEVEL9K_STATUS_OK_BACKGROUND="001"
source $ZSH/oh-my-zsh.sh

# Aliases

alias zshrc='vim ~/.zshrc'
alias vimrc="vim ~/.vimrc"
alias ls="colorls"
alias ll="colorls -l"
alias l="colorls -la"