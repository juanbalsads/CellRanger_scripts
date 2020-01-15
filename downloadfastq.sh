#!bin/bash
echo "Starting downloading" > /home/jbalsads/results/downloadfastq.txt;
date > /home/jbalsads/results/downloadfastq.txt;
#Download ALL the files from ftp server
wget -r ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967/ -P /home/jbalsads/yard/fastq_path
#download the reference dataset and uncompressed it
#curl http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-mm10-3.0.0.tar.gz -o /home/jbalsads/yard/ref_genome
wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-mm10-3.0.0.tar.gz -P /home/jbalsads/yard/ref_genome
cd /home/jbalsads/yard/ref_genome
tar -zxvf refdata-cellranger-mm10-3.0.0.tar.gz
rm -r refdata-cellranger-mm10-3.0.0.tar.gz
echo "Succesfully finish" > /home/jbalsads/results/downloadfastq.txt;
date > /home/jbalsads/results/downloadfastq.txt;
sudo poweroff;