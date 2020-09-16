#!/bin/bash
#SBATCH --job-name="sing-imb"
#SBATCH --ntasks=2
#SBATCH --ntasks-per-node=1
#SBATCH --time=0:10:0
#SBATCH --exclusive
#SBATCH --output=sing-imb.out
#SBATCH --error=sing-imb.err
module load gcc/9.3.0-5abm3xg
module load openmpi/4.0.3-qpsxmnc
export SLURM_MPI_TYPE=pmix_v2
export UCX_NET_DEVICES=mlx5_0:1

srun /alaska/steveb/opt/singularity-dev/bin/singularity exec mpi-benchmarks.sif IMB-MPI1 pingpong