#!bin/bash
echo "Starting installation";
mkdir yard;
mkdir results;
cd yard;
mkdir apps;
cd apps;
curl -o cellranger-3.1.0.tar.gz "http://cf.10xgenomics.com/releases/cell-exp/cellranger-3.1.0.tar.gz?Expires=1579168163&Policy=eyJTdGF0ZW1lbnQiOlt7IlJlc291cmNlIjoiaHR0cDovL2NmLjEweGdlbm9taWNzLmNvbS9yZWxlYXNlcy9jZWxsLWV4cC9jZWxscmFuZ2VyLTMuMS4wLnRhci5neiIsIkNvbmRpdGlvbiI6eyJEYXRlTGVzc1RoYW4iOnsiQVdTOkVwb2NoVGltZSI6MTU3OTE2ODE2M319fV19&Signature=MgcynsbjjYdJU-eeXcPoBc282WfVoERzsOzCURpwztq8KKHtQo4j0xt3Wa03AI3ZpNdfyz0ylYEl2iCMr5tfXG4sHVhWDOiFdI1SZBTNP4dB3xn4EMrQ1SDLWDNcHDEuKdaqd4Hu1M8wFFWssrACSt4PDUY42Z6bqRrj2ztRsbVDSOrqARDNu1rdV1Q6~RP1vjgDlWRkAihnTjHVXhFuxwDCfjk8c1dqwwQBbzIMZ1EV77ls37vxFW3cmmInLCcin49ND0JDzGjPbg2Jh8rzlW3vlti5cjXMCmYI0USG7dG2cw27Q6ZsTrQ1HO-IjTJ6mOGlmRwHqZN6nVWK8HPXWg__&Key-Pair-Id=APKAI7S6A5RYOXBWRPDA"
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
