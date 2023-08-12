# .bashrc

# |================================================================|
# | Filename: .bashrc
# | Author: ezeire
# | Description:
# | [[
# |	Config file for bash
# | ]]
# |================================================================|

# | COLOR VARIABLE |===============================================|
# |================================================================|
# | Black        0;30     Dark Gray     1;30
# | Red          0;31     Light Red     1;31
# | Green        0;32     Light Green   1;32
# | Brown/Orange 0;33     Yellow        1;33
# | Blue         0;34     Light Blue    1;34
# | Purple       0;35     Light Purple  1;35
# |================================================================|

  CL_BLACK="\[\e[0;30m\]" 
  CL_RED="\[\e[0;31m\]" 
  CL_GREEN="\[\e[0;32m\]" 
  CL_ORANGE="\[\e[0;33m\]" 
  CL_BLUE="\[\e[0;34m\]" 
  CL_PURPLE="\[\e[0;35m\]" 
  CL_CYAN="\[\e[0;36m\]" 
  CL_LGRAY="\[\e[037m\]"
  
  CL_DGRAY="\[\e[1;30m\]"
  CL_LRED="\[\e[1;31m\]"
  CL_LGREEN="\[\e[1;32m\]"
  CL_YELLOW="\[\e[1;33m\]"
  CL_LBLUE="\[\e[1;34m\]"
  CL_LPURPLE="\[\e[1;35m\]"
  CL_LCYAN="\[\e[1;36m\]"
  CL_WHITE="\[\e[1;37m\]"
  
  CL_END="\[\e[0m\]"

# |================================================================|

# | INIT |=========================================================|
# |================================================================|
  # If not running interactively, don't do anything
  [[ $- != *i* ]] && return
# |================================================================|

# | ALIAS |========================================================|
# |================================================================|
  alias ls="ls --color=auto"
  alias ain="sudo apt install"
  alias arm="sudo apt remove"
  alias asr="apt search"
  alias git-defp="git add . && git commit -m \"[upd]\" && git push"
# |================================================================|

# | PROMPT |=======================================================|
# |================================================================|
  USERNAME="${CL_LGREEN}[\u@\h]${CL_END}"
  TIME="${CL_ORANGE}\t \d${CL_END}"
  WAY="${CL_GREEN}[\W]${CL_END}"
  RIGHTS="${CL_RED}\$${CL_END}"
  
  #PS1='\[\e[1;32m\](\u@\h \W)\$>\[\e[0m\] '
  PS1="${USERNAME} ${WAY} ${TIME} \n ${RIGHTS}> "
# |================================================================|

# | LS CONFIG |====================================================|
# |================================================================|
  LS_COLORS=$LS_COLORS:'di=1;33:'
# |================================================================|
