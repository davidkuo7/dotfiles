# Prompt is set to:
# %B                            = Bold
# %F{red}%n                     = Foreground colour red, current user name
# %F{cyan}-                     = Foreground colour cyan, -
# %F{green}%*:                  = Foreground colour green, current time in 24h with seconds, :
# %F{white}%~                   = Foreground colour white, current directory (if starts with $HOME, use ~)
# %F{blue}${vcs_info_msg_0_}    = Foreground color blue, display version control info. 
# %b%f                          = Reset bold, reset foreground colour

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format version control information for git to display (branch)
zstyle ':vcs_info:git:*' formats ' (%b)'

setopt PROMPT_SUBST
PROMPT='%B%F{red}%n%F{cyan}-%F{green}%*:%F{white}%~%F{blue}${vcs_info_msg_0_}%b%f '
