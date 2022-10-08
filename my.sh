#!/bin/bash
for i in {1..10}
do
rm *.txt
java bobby.RandomPlayer 5000 > tr1.txt & java bobby.RandomPlayer 5000 > tr2.txt & java bobby.RandomPlayer 5000 > tr3.txt & java bobby.RandomPlayer 5000 > tr4.txt & java bobby.RandomPlayer 5000 > tr5.txt & java bobby.RandomPlayer 5000 > tr6.txt & sleep 5
cat tr*.txt
python3 autograder.py -t tr* 
echo --------------------------------- We are at $i ---------------------------------
done