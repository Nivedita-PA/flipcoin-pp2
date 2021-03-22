#! /bin/bash
count_0=0
count_1=0

while [ $count_0 -lt 21 -a $count_1 -lt 21 ]
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
   while [ $count_0 -eq $count_1 ]
do
         echo "Tie"
       flip_coin=$(( RANDOM%2 ))
        echo $flip_coin
       count_0=$(( count_0+1))
done

count_won=0
     if [ $count_1 -gt $count_0 ]
   then
       count_won=$(( $count_1-$count_0 ))
       echo "tails won by $count_won times"
  elif [ $count_0 -gt $count_1 ]
then
     count_won=$(( $count_0-$count_1 ))
       echo "heads won by $count_won times"
 elif [ $count_0 -eq $count_1 ]
  then
      echo "tie"
fi

