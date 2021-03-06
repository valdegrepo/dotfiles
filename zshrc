# Path to your oh-my-zsh installation.
export ZSH="/home/valdeg/.oh-my-zsh"
export PATH=$PATH:/var/lib/flatpak/exports/share
ZSH_THEME="powerlevel10k/powerlevel10k"
# Used Oh-my-zsh plugins
plugins=(git colored-man-pages web-search)

####################
#USER CONFIGURATION#
####################

# Enabled prompt segments
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator host dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(background_jobs status)

# Separators
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR=' '
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=''
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=' '
POWERLEVEL9K_RIGHT_PROMPT_FIRST_SEGMENT_START_SYMBOL=' '

# Promt settings
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_beginning"

# OS Icon
POWERLEVEL9K_OS_ICON_BACKGROUND="231"
POWERLEVEL9K_OS_ICON_FOREGROUND="009"

# Host
POWERLEVEL9K_HOST_TEMPLATE=""
POWERLEVEL9K_HOST_ICON="\uF109 "
POWERLEVEL9K_SSH_ICON="\uF489 "
POWERLEVEL9K_HOST_REMOTE_BACKGROUND="011"
POWERLEVEL9K_HOST_REMOTE_FOREGROUND="236"
POWERLEVEL9K_HOST_LOCAL_BACKGROUND="214"
POWERLEVEL9K_HOST_LOCAL_FOREGROUND="236"

# Dir
POWERLEVEL9K_DIR_ETC_BACKGROUND='006'
POWERLEVEL9K_DIR_ETC_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_BACKGROUND='004'
POWERLEVEL9K_DIR_HOME_FOREGROUND='015'
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND='004'
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND='015'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND='004'
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND='015'

# Background jobs indicator
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_BACKGROUND_JOBS_VERBOSE_ALWAYS=true
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND="015"
POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND="009"

# Status indicator
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_HIDE_SIGNAME=true
POWERLEVEL9K_STATUS_ERROR_BACKGROUND="009"
POWERLEVEL9K_STATUS_ERROR_FOREGROUND="015"

# VSC statuses
POWERLEVEL9K_VCS_CLEAN_BACKGROUND='none'
POWERLEVEL9K_VCS_CLEAN_FOREGROUND='015'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='none'
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='009'
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='none'
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='009'


# Aliases
alias zshrc='vim ~/.zshrc'
alias vimrc="vim ~/.vimrc"
alias up="cd .."
alias cl="clear"

source $ZSH/oh-my-zsh.sh

if [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

dropboxStatus=$(dropbox status)
warnLine1="
\n\n
\t██╗    ██╗ █████╗ ██████╗ ███╗   ██╗██╗███╗   ██╗ ██████╗ ██╗
\t██║    ██║██╔══██╗██╔══██╗████╗  ██║██║████╗  ██║██╔════╝ ██║
\t██║ █╗ ██║███████║██████╔╝██╔██╗ ██║██║██╔██╗ ██║██║  ███╗██║
\t██║███╗██║██╔══██║██╔══██╗██║╚██╗██║██║██║╚██╗██║██║   ██║╚═╝
\t╚███╔███╔╝██║  ██║██║  ██║██║ ╚████║██║██║ ╚████║╚██████╔╝██╗
\t ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝
\n"

warnLine2="\t\tDropbox isn't running!\n\n"

if [ "$dropboxStatus" != "Up to date" ]; then
    printf "$warnLine1"
    printf "$warnLine2"
fi
