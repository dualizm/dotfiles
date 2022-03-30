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

# set color random
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

function fish_prompt

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
