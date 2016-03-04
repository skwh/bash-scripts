TIME=$1 #time in seconds to sleep
INC=$(awk "BEGIN {print $TIME/100}") #1 percent increment
CUR=0
while [[ $CUR != $TIME ]]; do
  clear
  PER=$(awk "BEGIN {print ($CUR/$TIME)*100}")
  echo "Compiling, $PER%..."
  CUR=$[$CUR + $INC]
  sleep $INC
done
# This script displays a "Compiling" percentage for a given amount of time.
# Pass in the number of seconds you'd like it to run for and it will be at 100% when that time has passed.
# Use it to convince your non computer savvy employer/overseer that you're waiting for something to compile!
# Inspired by https://xkcd.com/303/
