
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end

# Segment endings
# AGNOSTER_SEGMENT_SEPARATOR[1] is separator of segment
# AGNOSTER_SEGMENT_SEPARATOR[2] is separator of subsegment
# set -U AGNOSTER_SEGMENT_SEPARATOR '' \u2502 # unicode box drawings light vertical (│)

# Icons
#set -U AGNOSTER_ICON_ERROR \u2717 # unicode ballot X (✗)
#set -U AGNOSTER_ICON_ROOT \u26a1 # unicode high voltage sign (⚡)
#set -U AGNOSTER_ICON_BGJOBS \u2699 # unicode gear (⚙)
#set -U AGNOSTER_ICON_GIT_BRANCH \u2387 # unicode alternative key symbol (⎇)
#set -U AGNOSTER_ICON_GIT_REF \u27a6 # unicode heavy black curved upwards and rightwards arrow (➦)
fzf_configure_bindings --directory=\cf

# My Asiases

# Alias for vim

alias v="vim"

set -U BROWSER firefox-bin

# Alias for emerge

alias ems="emerge -s"
alias ls="lsd"
alias emav="sudo emerge -av"
alias emupw="sudo emaint -a sync && emerge --ask --verbose --update --deep --newuse @world"

# Alias for rm

function del --wraps mv --description 'alias del=mv'
  mv "$argv" "~/Trash/"
end

alias delT="rm -rf"
alias clean_trash="rm -rf ~/Trash/*;"

# Alias for cd

alias ...="cd ../.."
