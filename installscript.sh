#!bin/bash
echo "Starting installation";
mkdir yard;
mkdir results;
cd yard;
mkdir apps;
cd apps;
curl -o cellranger-3.1.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-3.1.0.tar.gz?Expires=1578694101&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTMuMS4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTU3ODY5NDEwMX19fV19&Signature=GJwolrl1obkVq-tL7gUyx6-qJm~vOi~2OV9O3H4FKLtdvftsyey2ftMMCfcx~7rFpKtI3C2T2GubB6EhUndi1culjfgg7rYuTcC0Y-~6dYyZfTnvNJYI2vtVpX123~MzvVfZkjkgBDWTiI-a4DbBwPc94-4p4FyDjZvsqfdZl-p~gVCCOzufNjDsJb7a4g4Ly8iZTofKlWsjE~GF-mdh07BVIAg2q-kDT3Musdgx3k29kY~QznOsDg1KEQkgUhfiJ7SHV8MRoNemNizcECOPThHgqDMRs25zuYcK4CakmEd3l4aBRBwaJYy0y5cF9HqLoJV8w7M1eVqqR~9Oe-TIvg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
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
sudo poweroff;
