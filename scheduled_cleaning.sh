#!/bin/bash
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
echo -e "\n"
date 
var_molecule=$1
cd /home/tapas/MoRiBS-PIGS/examples/scripts/
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip0_analysis.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip10000_analysis.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.2_nskip15000_analysis.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip0_analysis.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip10000_analysis.py
rm temp_execution_moribs_driver_linear_molecule_n${var_molecule}_beta0.1_nskip15000_analysis.py
date 
echo -e "\n"
echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
