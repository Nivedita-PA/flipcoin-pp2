#! /bin/bash

for (( i=1; i<=10; i++ ))
do
    flip_coin=$(( RANDOM%2 ))
    if [ $flip_coin -eq 0 ]
then
     count_0=$(( count_0+1 ))
      echo $flip_coin "won" $count_0 "times"
else
     count_1=$(( count_1+1 ))
       echo $flip_coin "won" $count_1 "times"
fi
done


