#!/bin/bash
#SBATCH --job-name=ihuman_emt_a549_1
#SBATCH --mail-user=scampit@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --licenses=gurobi@slurmdb:1
#SBATCH --output=./ihuman_output.log
#SBATCH --error=./ihuman_error.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4g
#SBATCH --time=03-00:00:00
#SBATCH --account=lsa1
#SBATCH --partition=standard

module load matlab/R2020a
matlab -nodisplay -r "run('/home/scampit/Turbo/scampit/Software/emt/srv/ihuman_scCOBRA.m'); exit"
