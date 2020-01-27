#!bin/bash
echo "Starting installation";
mkdir yard;
mkdir results;
cd yard;
mkdir apps;
cd apps;

curl -o cellranger-3.1.0.tar.gz **INSERT LICENSE==>
echo "CELLRANGER succesfully download";
tar -zxvf cellranger-3.1.0.tar.gz;
echo "CELLRANGER succesfully descompressed";
#Add Cellranger to the path
cd cellranger-3.1.0;
export PATH=$PATH:/home/jbalsads/yard/apps/cellranger-3.1.0;
#Ask what it does.
echo 'export PATH=$PATH:/home/jbalsads/yard/apps/cellranger-3.1.0' >> ~/.bashrc source ~/.bashrc;
#Instalation fullfilled 
#First checkings
cellranger sitecheck > /home/jbalsads/results/sitecheck.txt;
sudo lshw > /home/jbalsads/results/hardwarefeatures.txt;
echo "CELLRANGER sitecheck succesfully run";
#download the reference dataset and uncompressed it
#curl http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-mm10-3.0.0.tar.gz -o /home/jbalsads/yard/ref_genome
wget http://cf.10xgenomics.com/supp/cell-exp/refdata-cellranger-mm10-3.0.0.tar.gz -P /home/jbalsads/yard/ref_genome
cd /home/jbalsads/yard/ref_genome
tar -zxvf refdata-cellranger-mm10-3.0.0.tar.gz
rm -r refdata-cellranger-mm10-3.0.0.tar.gz
exit 0
