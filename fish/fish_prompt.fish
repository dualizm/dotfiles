function random_color_char 
  switch ( random 1 6 )
  case 1
    set_color blue
  case 2
    set_color cyan
  case 3
    set_color green
  case 4
    set_color magenta
  case 5
    set_color red
  case 6
    set_color yellow
  end
end

# set color num
function scr # take 1 arg
  switch $argv[1]
  case 1
    set_color blue
  case 2
    set_color cyan
  case 3
    set_color green
  case 4
    set_color magenta
  case 5
    set_color red
  case 6
    set_color yellow
  end
end

function colors_line # take 1 arg
  for ch in (string split '' $argv[1])
    random_color_char
    printf "$ch"
  end
end

function user_log # take 1 arg
    scr $argv[1]
    printf "[" 

    set_color brblue
    printf "$USER"

    scr $argv[1]
    printf "]─"
end

# Printing
# ┌▶◀[ [ezi]─[BORiS] ]▶ ◀[ ~ ]▶
# └─▶
function user_prompt_one #no args
  set -l user_char '▶'
  if fish_is_root_user
      set user_char '▷'
  end

  set -l rc (random 1 6)
  set -l left_smbl (scr $rc) "┌▶◀[" 
  set -l info_user (user_log $rc)(scr $rc)"["(set_color red)"$hostname"(scr $rc)"]"
  set -l middle_smbl "]▶ ◀[" 
  set -l way (set_color brgreen)(prompt_pwd | tr -d "\n")
  set -l right_smbl (scr $rc)"]▶"

  set -l second_line  "└─$user_char "(set_color normal)
  echo $left_smbl $info_user $middle_smbl $way $right_smbl \n $second_line
end

# Printing
# ◀[ ezi ]▶ ~ ]▶
function user_prompt_two
  set -l user_char '▶'
  if fish_is_root_user
      set user_char '▷'
  end

  set -l left_smbl (set_color white)"◀["
  set -l info_user (set_color magenta)"$USER"
  set -l middle_smbl (set_color white)"]▶"
  set -l way (set_color brgreen)(prompt_pwd | tr -d "\n")
  set -l right_smbl (set_color white)"]$user_char"

  echo $left_smbl $info_user $middle_smbl $way $right_smbl

end

# Printing
# ~ ]▶
function user_prompt_three
  set -l user_char '▶'
  if fish_is_root_user
      set user_char '▷'
  end

  set -l way (set_color brgreen)(prompt_pwd | tr -d "\n")
  set -l right_smbl (set_color white)"]$user_char"

  echo $way $right_smbl

end

# Printing
#  ezi  /etc/... 
function user_prompt_fourth
# any var = user -  ; root -  
# any var = user -  ; root - 
  set -l user_char ''
  if fish_is_root_user
      set user_char ''
  end

  # gentoo color 9a91db
  set -l gentoo_smbl (set_color bd93f9)
  set -l info_user (set_color 50fa7b)"$USER"
  set -l smbl (set_color f1fa8c)"" #
  set -l way (set_color f1fa8c)(prompt_pwd | tr -d "\n")
  
  echo ' '$gentoo_smbl $info_user (set_color ff5555)$user_char $way$smbl' '
end


function fish_prompt
  user_prompt_fourth
end
