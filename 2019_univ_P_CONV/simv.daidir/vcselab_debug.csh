#!/bin/csh -f

cd /RAID2/COURSE/2025_Spring/DCS/DCS031/ic_contest_practice/2019_univ_P_CONV

#This ENV is used to avoid overriding current script in next vcselab run 
setenv SNPS_VCSELAB_SCRIPT_NO_OVERRIDE  1

/usr/cad/synopsys/vcs/2022.06/linux64/bin/vcselab $* \
    -o \
    simv \
    -nobanner \

cd -

