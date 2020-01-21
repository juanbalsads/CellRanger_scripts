#!bin/bash
for i in 1 2 3
do
	rm -rf /home/jbalsads/results/sample
	echo "Starting Count" >> /home/jbalsads/results/count_.txt;
	date >> /home/jbalsads/results/count_.txt;
	cd /home/jbalsads/yard/fastq_path/ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967
	find -name "*.fastq.gz" | cut -c3-18 | uniq -d |head -n 10000| grep -v / | tr '\n' ','> list.txt
	read var < list.txt;
	cd /home/jbalsads/results
	cellranger count --id=sample --transcriptome=/home/jbalsads/yard/ref_genome/refdata-cellranger-mm10-3.0.0 --fastqs=/home/jbalsads/yard/fastq_path/ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/MTAB/E-MTAB-6967 --sample=$var
	echo "Starting Count" >> /home/jbalsads/results/count_.txt;
	date >> /home/jbalsads/results/count_.txt;
done
sudo poweroff



