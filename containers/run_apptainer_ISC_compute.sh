#!/bin/bash
#SBATCH --job-name=my_apptainer_job
#SBATCH --output=job_output.txt
#SBATCH --error=job_error.txt
#SBATCH --time=00:10:00
#SBATCH --mem=2G
#SBATCH --cpus-per-task=1

# Define the location of your code on the host
# export CODE_ON_HOST="/home/cedric/PostPhD/HES/Research/ComputeHEI-Template/"
export CODE_ON_HOST="/home/cedric.travelletti/shared_datasets/ComputeHEI-Template/"

# Where the code will be on the container.
# WARNING: should match the one in the Apptainer.def
CONTAINER_CODE_LOCATION="/code"

# Run Apptainer, binding the host code directory to the container's /code path
apptainer run --scratch /tmp --bind $CODE_ON_HOST:$CONTAINER_CODE_LOCATION my_container.sif
