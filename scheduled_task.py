import os, argparse

parser = argparse.ArgumentParser(
    description="This is a Python script that executes several bash commands. \
					The bash commands are scheduled to run at a later time. \
					The code is developed by Dr. Tapas Sahoo, SNBNCBS.",
    epilog="Enjoy the program! :)")
parser.add_argument("job",
                    type=str,
                    choices=["submission", "analysis"],
                    help="Type of jobs: submission of new jobs or analyzing \
                    output files.")
parser.add_argument("numb_molecule",
                    metavar='NUMBER',
                    type=int,
                    help="Number of Molecules.")
parser.add_argument("parameter_name",
                    type=str,
                    choices=["beta", "tau"],
                    help="Name of the parameter - either beta or tau.")
parser.add_argument("parameter_value",
                    metavar='VALUE',
                    type=float,
                    help="The value associated with the parameter. \
                    The unit is inverse temperature.")
parser.add_argument("preskip",
                    metavar='NUMBER',
                    type=int,
                    default=0,
                    help="The number of blocks in outputs \
                    skipped from the beginning. It can be necessary \
                    while the analysis flag is open to remove \
                    pre-equilibrated data.")
args = parser.parse_args()


def job_string_sbatch_moribs(
		job,
		numb_molecule,
		parameter_name,
		parameter_value,
		numb_preskip):

	#ssh graham "cp generic_execution_moribs_driver_linear_molecule.py temp_execution_moribs_driver_linear_molecule_n$var1_beta$var4_nskip$var3.py && sed -i 's/\<NUMB_MOLECULE\>/$var1/' temp_execution_moribs_driver_linear_molecule_n$var1_beta$var4_nskip$var3.py && sed -i 's/\<PARAMETER_VALUE\>/$var2/' temp_execution_moribs_driver_linear_molecule_n$var1_beta$var4_nskip$var3.py && sed -i 's/\<NUMB_SKIP\>/$var3/' temp_execution_moribs_driver_linear_molecule_n$var1_beta$var4_nskip$var3.py && pyenvs && python temp_execution_moribs_driver_linear_molecule_n$var1_beta$var4_nskip$var3.py && pwd && exit && pwd" >> ${HOME}/Logs/push-github.log 2>&1

	job_string = 'ssh graham "date; pwd">> ${HOME}/Logs/push-github.log 2>&1'

	return job_string


# Initial setup
job = args.job
numb_molecule = args.numb_molecule
parameter_name = args.parameter_name
parameter_value = args.parameter_value
numb_preskip=args.preskip
#
print(job_string_sbatch_moribs(job, numb_molecule, parameter_name, parameter_value, numb_preskip))

