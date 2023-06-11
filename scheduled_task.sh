#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo -e "\n"
uname -a
date 
pwd

job_type=$1
numb_molecule=$2
parameter_value=$3
numb_block=$4
numb_pass=$5
preskip_value=$6

echo "job_type        = $job_type"
echo "numb_molecule   = $numb_molecule"
echo "parameter_value = $parameter_value"
echo "numb_block      = $numb_block"
echo "numb_pass       = $numb_pass"
echo "numb_preskip    = $preskip_value"

cd /home/tapas/MoRiBS-PIGS/examples/scripts/
cp generic_execution_moribs_driver_linear_molecule.py temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_JOB_TYPE\>/$job_type/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_NUMB_MOLECULE\>/$numb_molecule/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_PARAMETER_VALUE\>/$parameter_value/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_NUMB_BLOCK\>/$numb_block/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_NUMB_PASS\>/$numb_pass/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
sed -i "s/\<INPUT_NUMB_PRESKIP\>/$preskip_value/" temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py
source ~/.bashrc 
pyenvs
python temp_execution_moribs_driver_linear_molecule_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mc_blocks${numb_block}_mc_passes${numb_pass}_nskip${preskip_value}_${job_type}.py > ${HOME}/final-pigs-outputs-for-plotting/moribs_${job_type}_n${numb_molecule}HF_beta${parameter_value}inverse_kelvin_mcblocks${numb_block}_mcpasses${numb_pass}_nskip${preskip_value}.log &

pwd
date 
echo -e "\n"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
