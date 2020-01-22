#!/usr/bin/bash
#
#SBATCH -p hpc-bio-lejeune
#SBATCH --workdir=/home/alumno11/elenasanchez/Lab3
#SBATCH -J elenasanchez
#SBATCH --cpus-per-task=12
#SBATCH --mail-type=ALL    # END/START/NONE
#SBATCH --mail-user=elena.sanchezb@um.es

export PATH=$PATH:/home/alumno11/elenasanchez/Lab3:/home/alumno11/lejeune/elenasanchez/Lab3


time find -name "*.fastq" -type f | parallel file_cut.sh 

