#!/bin/bash
#SBATCH -N 1 # number of nodes
#SBATCH -n 20 # number of cores
#SBATCH --mail-type=END,FAIL # notifications for job done & fail
#SBATCH --mail-user=david.lyons@jic.ac.uk # send-to address
#SBATCH --mem 40g # memory pool for all cores
#SBATCH -p nbi-medium

CONTAINER=/jic/software/production/bcl2fastq2/2.17.1.14/bcl2fastq2.img
OUTPUT=/jic/scratch/groups/Daniel-Zilberman/Projects/dave/0-bcl_and_fq_jic/191212_demux

##$CONTAINER --runfolder-dir /jic/scratch/groups/Daniel-Zilberman/Projects/dave/0-bcl_and_fq_jic/191212_NB501793_0129_AHJYLGBGXC --output-dir $OUTPUT --no-lane-splitting --use-bases-mask Y37,I6N,N7,Y37
$CONTAINER --runfolder-dir /jic/scratch/groups/Daniel-Zilberman/Projects/dave/0-bcl_and_fq_jic/191212_NB501793_0129_AHJYLGBGXC  --output-dir $OUTPUT --no-lane-splitting

