
if status is-interactive
    # Commands to run in interactive sessions can go here
end

function hi-user
  printf "\n         Hi, $USER !      \n"
end

function print-sleepy-cat
  printf "       |\      _,,,---,,_\n"
  printf " ZZZzz /,`.-'`'    -.  ;-;;,_\n"
  printf "      |,4-  ) )-,_. ,\ (  `'-'\n"
  printf "     '---''(_/--'  `-'\_)  Relax \n\n"
end

function print-break-cat
  printf "                        |\---/|\n"
  printf "                        | ,_, |\n"
  printf " Maybe take a break?     \_`_/-..----.\n"
  printf "                      ___/ `   ' ,\"\"+ \\ \n"
  printf "                     (__...'   __\\    |'.___.';\n"
  printf "                       (_,...'(_,.'__)/'.....+\n\n"
end

function print-cat-hunter
  printf "  _._     _,-'""`-._\n"
  printf " (,-.`._,'(       |\`-/|\n"
  printf "     `-.-' \ )-`( , o o)\n"
  printf "           `-    \`_`\"'- Bug somewhere close \n\n"
end

function print-secretive-cat
  printf "                        |\\__/,|   ('\\ \n"
  printf " The answer is near   _.|o o  |_   ) ) \n"
  printf "                    -(((---(((-------- \n\n"
end

function fish_greeting
  printf (set_color 9480bd)
  hi-user
  switch ( random 1 4 )
    case 1
      print-secretive-cat
    case 2
      print-cat-hunter
    case 3
      print-sleepy-cat
    case 4
      print-break-cat
  end
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

alias l="lsd"
alias g="cd"
alias emacs="emacs -nw"

function g --wraps cd --description 'alias g=cd'
  cd "$argv" && lsd
end

# Alias for vim

set -Ux BROWSER firefox-bin
set -Ux JAVA_HOME /opt/openjdk-bin-11.0.14_p9/

# Alias for emerge
alias ems="emerge -s"
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
