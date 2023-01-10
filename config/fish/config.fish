#---------
# PROMPT-CONFIG
#---------
function hi-user --description 'hi, user!'
    printf ";\n;         Hi, $USER !      \n"
end

function print-sleepy-cat --description 'sleep cat'
    printf ";       |\      _,,,---,,_\n"
    printf "; ZZZzz /,`.-'`'    -.  ;-;;,_\n"
    printf ";      |,4-  ) )-,_. ,\ (  `'-'\n"
    printf ";    '---''(_/--'  `-'\_)  Relax \n\n"
end

function print-break-cat --description 'break cat'
    printf ";                        |\---/|\n"
    printf ";                        | ,_, |\n"
    printf "; Maybe take a break?     \_`_/-..----.\n"
    printf ";                      ___/ `   ' ,\"\"+ \\ \n"
    printf ";                     (__...'   __\\    |'.___.';\n"
    printf ";                       (_,...'(_,.'__)/'.....+\n\n"
end

function print-cat-hunter --description 'hunter cat'
    printf ";  _._     _,-'""`-._\n"
    printf "; (,-.`._,'(       |\`-/|\n"
    printf ";     `-.-' \ )-`( , o o)\n"
    printf ";           `-    \`_`\"'- Bug somewhere close \n\n"
end

function print-secretive-cat --description 'secretive cat'
    printf ";                        |\\__/,|   ('\\ \n"
    printf "; The answer is near   _.|o o  |_   ) ) \n"
    printf ";                    -(((---(((-------- \n\n"
end

function fish_greeting
    printf (set_color d34474)

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

#---------
# FZF-CONFIG
#---------
if type -q fzf
    fzf_configure_bindings --directory=\cf
end

#---------
# ENV
#---------
set -gx BROWSER firefox-bin
set -gx JAVA_HOME /opt/openjdk-bin-11.0.14_p9/

if type -q nvim
    set -Ux EDITOR nvim
else if type -q vim
    set -Ux EDITOR vim
else if type -q vi
    set -Ux EDITOR vi
end

#---------
# ALIAS
#---------
#-- EDITOR
if type -q nvim
    alias e="nvim"
else if type -q vim
    alias e="vim"
else if type -q vi
    alias e="vi"
end

#-- DEV
if type -q git
    function git-default-push --wraps git
        git add .
        git commit -m "[upd]"
        git push
    end
end

#-- LINUX-COMMAND
if type -q lsd
    alias ls="lsd"
end

function g --wraps cd --description 'alias g=cd'
    if string length -q $argv
        cd "$argv" && lsd -la
    else
        cd . && lsd -la
    end
end

function del --wraps mv --description 'alias del=mv'
    mv "$argv" "~/Trash/"
end

alias clean_trash="rm -rf ~/Trash/*;"

alias ...="cd ../.."

#-- GENTOO
if type -q emerge
    alias ems="emerge -s"
    alias emS="emerge -S"
    alias emI="sudo emerge -av"
    alias emD="sudo emerge -Wav"
    alias emU="sudo emerge -uDNav @world"
end
