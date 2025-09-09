# !/bin/bash

# create a loop that run aslong as user says goodbye
while true; do

  # ask user how do they feel today or how are they doing
  echo "How are you feeling today?:"

  # read the answer and save it under variable
  read students_answer
  
  # silce the read text for easier usage later
  goodbye=${students_answer:0:7}

  #echo $(( $RANDOM % 4))

  # randomly output the most calming version so
  # the user won't notice these are the only two
  # two answers they can get. ¯\_(ツ)_/¯
  consolation=$(( $RANDOM % 4 ))

  # answer user "there there" or "there there. have you tried applying to jobs?" 
  if [ "$goodbye" = "Goodbye" ] || [ "$goodbye" = "goodbye" ]; then
     echo -e "\nGoodbye, happy to help anytime! :)"
     break
  elif [ "$consolation" == "1" ]; then
     echo -e "There there. :) So, have you given applying for jobs a shot?\n"
     sleep 1
  else
     echo -e "There there.\n"
     sleep 1
  fi

done
