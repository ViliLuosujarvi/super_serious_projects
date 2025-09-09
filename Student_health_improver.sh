# !/bin/bash

# ask user how do they feel today or how are they doing
echo "How are you feeling today?:"

# read the answer and save it under variable
read students_answer

#echo $(( $RANDOM % 4))

# randomly output the most calming version so
# the user won't notice these are the only two
# two answers they can get. ¯\_(ツ)_/¯
consolation=$(( $RANDOM % 4 ))

# answer user "there there" or "there there. have you tried applying to jobs?" 
if [ $consolation == 1 ]; then
   echo "There there. :) So, have you given applying for jobs a shot?"
else
   echo "There, there"
fi
