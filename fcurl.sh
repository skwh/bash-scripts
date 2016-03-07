TIME=$1 #time in seconds to sleep
INC=$(echo "scale=3;$TIME/100" | bc) #1 percent increment
TIME=$(echo "scale=3;$TIME.0" | bc) #convert time to a decimal
CUR=0
while [[ $CUR!=$TIME ]]; do
  clear
  PER=$(awk "BEGIN {print ($CUR/$TIME)*100}")
  echo "Compiling, $PER%..."
  echo "TEST: CUR=$CUR"
  echo "TEST: TIME=$TIME"
  CUR=$(echo "scale=3;$CUR+$INC" | bc)
  sleep $INC
done
# This script displays a "Compiling" percentage for a given amount of time.
# Pass in the number of seconds you'd like it to run for and it will be at 100% when that time has passed.
# Use it to convince your non computer savvy employer/overseer that you're waiting for something to compile!
# Inspired by https://xkcd.com/303/
