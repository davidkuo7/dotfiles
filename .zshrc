# Prompt is set to:
# %B            = Bold
# %F{red}%n     = Foreground colour red, current user name
# %F{cyan}-     = Foreground colour cyan, -
# %F{green}%*:  = Foreground colour green, current time in 24h with seconds, :
# %F{white}%~   = Foreground colour white, current directory (if starts with $HOME, use ~)
# %b%f          = Reset bold, reset foreground colour
PROMPT='%B%F{red}%n%F{cyan}-%F{green}%*:%F{white}%~%b%f '
