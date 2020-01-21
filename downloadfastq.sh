#!bin/bash
echo "Starting downloading" >> /home/jbalsads/results/downloadfastq.txt;
date >> /home/jbalsads/results/downloadfastq.txt;
#Download ALL the files from ftp server
wget -r ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967/ -P /home/jbalsads/yard/fastq_path
echo "Succesfully finish" >> /home/jbalsads/results/downloadfastq.txt;
date >> /home/jbalsads/results/downloadfastq.txt;
sudo poweroff;