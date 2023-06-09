#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo -e "\n"
uname -a
date 

job_type=$1
numb_molecule=$2
parameter_value=$3
numb_block=$4
numb_pass=$5
preskip_value=$6

cd /home/tapas/MoRiBS-PIGS/examples/scripts/
rm temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py

date 
echo -e "\n"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
