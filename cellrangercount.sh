#!bin/bash
echo "Starting downloading";
cd /home/jbalsads/yard/fastq_path/ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967
find -name "*.fastq.gz" | cut -c3-18 | uniq -d | grep -v / | tr '\n' ','> list.txt
read var < list.txt;
cd /home/jbalsads/results
cellranger count --id=sample --transcriptome=/home/jbalsads/yard/ref_genome/refdata-cellranger-mm10-3.0.0 --fastqs=/home/jbalsads/yard/fastq_path/ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967 --sample=$var
#for i in {00..50}; do sleep 1; echo $i; done
sudo poweroff



