#---------
# PROMPT-CONFIG
#---------
  function hi-user
    printf ";\n;         Hi, $USER !      \n"
  end
  
  function print-sleepy-cat
    printf ";       |\      _,,,---,,_\n"
    printf "; ZZZzz /,`.-'`'    -.  ;-;;,_\n"
    printf ";      |,4-  ) )-,_. ,\ (  `'-'\n"
    printf ";    '---''(_/--'  `-'\_)  Relax \n\n"
  end
  
  function print-break-cat
    printf ";                        |\---/|\n"
    printf ";                        | ,_, |\n"
    printf "; Maybe take a break?     \_`_/-..----.\n"
    printf ";                      ___/ `   ' ,\"\"+ \\ \n"
    printf ";                     (__...'   __\\    |'.___.';\n"
    printf ";                       (_,...'(_,.'__)/'.....+\n\n"
  end
  
  function print-cat-hunter
    printf ";  _._     _,-'""`-._\n"
    printf "; (,-.`._,'(       |\`-/|\n"
    printf ";     `-.-' \ )-`( , o o)\n"
    printf ";           `-    \`_`\"'- Bug somewhere close \n\n"
  end
  
  function print-secretive-cat
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
  fzf_configure_bindings --directory=\cf

#---------
# ENV
#---------
  set -Ux BROWSER firefox-bin
  set -Ux JAVA_HOME /opt/openjdk-bin-11.0.14_p9/

#---------
# ALIAS
#---------
  #-- EDITOR
    alias ed="nvim"
    #alias emacs="emacs -nw"

  #-- LINUX-COMMAND
    alias ls="lsd"

    function g --wraps cd --description 'alias g=cd'
      cd "$argv" && lsd '-la'
    end

    function del --wraps mv --description 'alias del=mv'
      mv "$argv" "~/Trash/"
    end
    
    alias clean_trash="rm -rf ~/Trash/*;"

    alias ...="cd ../.."

  #-- GENTOO
    alias repfd="emerge -s"
    alias repFd="emerge -S"
    alias ginst="sudo emerge -av"
    alias grem="sudo emerge -Wav"
    alias gentoo_upd="sudo emerge -uDNav @world"
