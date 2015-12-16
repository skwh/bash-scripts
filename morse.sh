#!/bin/bash
LETTERS=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
MORSE=(".-" "-..." "-.-." "-.." "." "..-." "--." "...." ".." ".---" "-.-" ".-.." "--" "-." "---" ".--." "--.-" ".-." "..." "-" "..-" "...-" ".--" "-..-" "-.--" "--.." )

function ltm() {
  STR=$(echo "$1" | awk '{print toupper($0)}')
  ARY=$(echo $STR | grep -o .)
  for element in $ARY; do
    for i in `seq 0 26`; do
      if [ "${LETTERS[$i]}" == "$element" ]; then
        echo -n "${MORSE[$i]} "
        break
      fi
    done
  done
  echo ""
}

ltm "$1"
