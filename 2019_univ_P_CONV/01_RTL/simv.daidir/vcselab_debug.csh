#!/bin/csh -f

cd /RAID2/COURSE/2025_Spring/DCS/DCS031/2019_univ/01_RTL

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/usr/cad/synopsys/vcs/2022.06/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

