# .bashrc

# |================================================================|
# | Filename: .bashrc
# | Author: dualizm
# | Description:
# | [[
# |	Config file for bash
# | ]]
# |================================================================|

# | INIT |=========================================================|
# |================================================================|
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# export
export TERM="xterm-256color"
export VISUAL="nvim"
export EDITOR="vi"
export PATH="/home/$USER/scripts:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# set vi mode
set -o vi
bind -m vi-command 'Control-l: clear-screen'
bind -m vi-insert 'Control-l: clear-screen'

# generalized commands for different Linux
if [[ -f /etc/os-release ]]; then
    SYSTEM_ID=$(grep "^ID=" /etc/os-release | cut -d'=' -f2)
    case $SYSTEM_ID in
        "debian")
            system_special=" "
            system_packager="apt"
            system_install="install"
            system_search="search"
            system_remove="remove"
        ;;
        "gentoo")
            system_special=" "
            system_packager="emerge"
            system_install="-av"
            system_search="-s"
            system_remove="-W"
        ;;
        "endeavouros")
            system_special=" "
            system_packager="pacman"
            system_install="-Sy"
            system_search="-Ss"
            system_remove="-R"
        ;;
    esac
fi
# |================================================================|

# | COLOR PICK |===================================================|
# |================================================================|
# | Black        0;30     Dark Gray     1;30
# | Red          0;31     Light Red     1;31
# | Green        0;32     Light Green   1;32
# | Brown/Orange 0;33     Yellow        1;33
# | Blue         0;34     Light Blue    1;34
# | Purple       0;35     Light Purple  1;35
# |================================================================|

fmt_color_code() # 1 = color number
{
  echo "\[\e[${1}m\]"
}

color_code() # 1 = color literal
{
    case $1 in
        "black")        echo $(fmt_color_code "0;30");;
        "red")          echo $(fmt_color_code "0;31");;
        "green")        echo $(fmt_color_code "0;32");;
        "orange")       echo $(fmt_color_code "0;33");;
        "blue")         echo $(fmt_color_code "0;34");;
        "purple")       echo $(fmt_color_code "0;35");;
        "cyan")         echo $(fmt_color_code "0;36");;
        "light-gray")   echo $(fmt_color_code "037");;
        "dark-gray")    echo $(fmt_color_code "1;30");;
        "light-red")    echo $(fmt_color_code "1;31");;
        "light-green")  echo $(fmt_color_code "1;32");;
        "yellow")       echo $(fmt_color_code "1;33");;
        "light-blue")   echo $(fmt_color_code "1;34");;
        "light-purple") echo $(fmt_color_code "1;35");;
        "light-cyan")   echo $(fmt_color_code "1;36");;
        "white")        echo $(fmt_color_code "1;37");;
        "end")          echo $(fmt_color_code "0");;
    esac
}

fmt_color() # 1 = color literal, 2 = text
{
  echo "$(color_code "$1")$2$(color_code "end")"
}

# |================================================================|

# | DEFUN |========================================================|
# |================================================================|

cd_and_show() # 1 = path to cd
{
  cd "$1"
  local ls_output=$(ls --color=auto)
  local ls_limit=100
  local ls_size=${#ls_output}

  if [[ "$ls_size" -gt "$ls_limit" ]]; then
    local sub_ls=${ls_output:0:$ls_limit}
    printf "$sub_ls\n...\n"
  else
    echo "$ls_output"
  fi
}

short_path() 
{
  local way=$(pwd)
  local way_limit=30
  local way_size=${#way}
  if [[ "$way_size" -gt "$way_limit" ]]; then
    local p1=$(basename "$way")
    local p2=$(basename $(dirname "$way"))
    local pr=$(pwd | cut -f 1,2 -d "/")
    echo "$pr/.../$p2/$p1"
  else
    echo "$way"
  fi
}
# |================================================================|

# | ALIAS |========================================================|
# |================================================================|

# system vars
alias ,i="sudo ${system_packager}${system_special}${system_install}"
alias ,s="${system_packager}${system_special}${system_search}"
alias ,q="exit"
alias ,r="sudo ${system_packager}${system_special}${system_remove}"
alias ,e="${VISUAL}"

# save your life
alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

# lsias
alias ls="ls --color=auto"
alias la="ls -a --color=auto"
alias ll="ls -la --color=auto"

# mkdir
alias mkdir="mkdir -p"

# cdias
alias cd..="cd .."
alias ..="cd .."
alias ...="cd ../.."

# psias
alias psa="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# grepias
alias grep="grep --color=auto"

# gitias
alias git-dp="git add . && git commit -m \"[upd]\" && git push"
# |================================================================|

# | PROMPT |=======================================================|
# |================================================================|
USERNAME=$(fmt_color "light-green" "\u@\h")
WAY=$(fmt_color "green" "\w")
RIGHTS=$(fmt_color "red" "\$")
PROMPT_DIRTRIM=2

PS1="[${USERNAME}]${WAY}${RIGHTS}> "
# |================================================================|

# | LS CONFIG |====================================================|
# |================================================================|
LS_COLORS=$LS_COLORS:'di=1;33:'
# |================================================================|
