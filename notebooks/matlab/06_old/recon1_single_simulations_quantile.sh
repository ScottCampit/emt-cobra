#!/bin/bash
#SBATCH --job-name=recon1_emt_a549_quantile
#SBATCH --mail-user=scampit@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --licenses=gurobi@slurmdb:8
#SBATCH --output=./recon1_rho1_output.log
#SBATCH --error=./recon1_rho1_error.err
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --mem-per-cpu=4g
#SBATCH --time=03-00:00:00
#SBATCH --account=lsa1
#SBATCH --partition=standard

module load matlab/R2018b
module load gurobi
matlab -nodisplay -r "run('/home/scampit/Turbo/scampit/Software/emt-cobra/notebooks/matlab/06_old/quantile_cobra_simulations.m'); exit"
