
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function fish_greeting
end


# My Asiases

# Alias for vim

alias v="vim"


# Alias for emerge

alias ems="emerge -s"
alias emav="emerge -av"
alias emupw="emaint -a sync && emerge --ask --verbose --update --deep --newuse @world"

# Alias for rm

function del --wraps mv --description 'alias del=mv'
  mv "$argv" "~/Trash/"
end

alias delT="rm -rf"
alias clean_trash="rm -rf ~/Trash/*;"

# Alias for cd

alias ...="cd ../.."
