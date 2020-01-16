#!bin/bash
echo "Starting installation";
mkdir yard;
mkdir results;
cd yard;
mkdir apps;
cd apps;

curl -o cellranger-3.1.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-3.1.0.tar.gz?Expires=1579222872&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTMuMS4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTU3OTIyMjg3Mn19fV19&Signature=Go4G2ieEvXKrD6wNAmlBrBobanUzm5MP3lUEnPpcjTAu~B7nPvYtQBP7j7Q~a7JPI1V0AgpoPoXO0bxpYOpIJqSblQDWsaId3okXYMHIMLY6kmsp5dpNXkgXfM6Jp5XRkptxlabfXT2yf-pfbAp3Qz1WjWCtLt7snsj0~yx4hbEi5F19wOpZVdPeunf-7BP7GAGgroQXkUUwHMvMJFeuOh6v2Y4kpdl0IcBiIjue-c9kPs~7UCb6CkCmpIS2C0D9ddly-NfBNzqmuvTftdggB2RsZ5~NOiE3w-rKtX66IDtNYxuPhcqv9Cpf5qogt6SbwZxe6GTtpvdP1VTVxP4lbA__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
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
exit 0
