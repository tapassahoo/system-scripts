#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo -e "\n"
date 
var_molecule=$1
cd /home/tapas/MoRiBS-PIGS/examples/scripts/
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip0.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip10000.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip15000.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip0.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip10000.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip15000.py
date 
echo -e "\n"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
