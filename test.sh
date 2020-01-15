#!bin/bash
echo "Starting downloading" >> /home/jbalsads/results/test.txt;
date >> /home/jbalsads/results/test.txt;
for i in {00..50}; do sleep 1; echo $i; done
echo "Finish" >> /home/jbalsads/results/test.txt;
date > >/home/jbalsads/results/test.txt;
sudo poweroff
exit 0;

