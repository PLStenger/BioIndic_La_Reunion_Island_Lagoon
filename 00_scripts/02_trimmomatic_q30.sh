#!/usr/bin/env bash

# trimmomatic version 0.39
# trimmomatic manual : http://www.usadellab.org/cms/uploads/supplementary/Trimmomatic/TrimmomaticManual_V0.32.pdf

WORKING_/scratch_vol1/fungi/BioIndic_La_Reunion_Island_Lagoon/01_raw_data/Original_reads_16S
OUTPUT=/scratch_vol1/fungi/BioIndic_La_Reunion_Island_Lagoon/03_cleaned_data/Original_reads_16S

# Make the directory (mkdir) only if not existe already(-p)
mkdir -p $OUTPUT

ADAPTERFILE=/scratch_vol1/fungi/BioIndic_La_Reunion_Island_Lagoon/99_softwares/adapters_sequences.fasta

# Arguments :
# ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150

eval "$(conda shell.bash hook)"
conda activate trimmomatic

cd $WORKING_DIRECTORY

####################################################
# Cleaning step
####################################################

trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-COR1_S206_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-COR1_S206_L001_R2_001.fastq $OUTPUT/16S-1-COP-COR1_S206_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-COR1_S206_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-COR1_S206_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-COR1_S206_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-COR2_S210_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-COR2_S210_L001_R2_001.fastq $OUTPUT/16S-1-COP-COR2_S210_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-COR2_S210_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-COR2_S210_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-COR2_S210_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-COR3_S214_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-COR3_S214_L001_R2_001.fastq $OUTPUT/16S-1-COP-COR3_S214_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-COR3_S214_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-COR3_S214_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-COR3_S214_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-EAU1_S177_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-EAU1_S177_L001_R2_001.fastq $OUTPUT/16S-1-COP-EAU1_S177_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-EAU1_S177_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-EAU1_S177_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-EAU1_S177_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-EAU2_S182_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-EAU2_S182_L001_R2_001.fastq $OUTPUT/16S-1-COP-EAU2_S182_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-EAU2_S182_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-EAU2_S182_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-EAU2_S182_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-EAU3_S187_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-EAU3_S187_L001_R2_001.fastq $OUTPUT/16S-1-COP-EAU3_S187_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-EAU3_S187_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-EAU3_S187_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-EAU3_S187_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-SED1_S163_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-SED1_S163_L001_R2_001.fastq $OUTPUT/16S-1-COP-SED1_S163_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-SED1_S163_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-SED1_S163_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-SED1_S163_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-SED2_S168_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-SED2_S168_L001_R2_001.fastq $OUTPUT/16S-1-COP-SED2_S168_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-SED2_S168_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-SED2_S168_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-SED2_S168_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-COP-SED3_S173_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-COP-SED3_S173_L001_R2_001.fastq $OUTPUT/16S-1-COP-SED3_S173_L001_R1.paired.fastq.gz $OUTPUT/16S-1-COP-SED3_S173_L001_R1.single.fastq.gz $OUTPUT/16S-1-COP-SED3_S173_L001_R2.paired.fastq.gz $OUTPUT/16S-1-COP-SED3_S173_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-COR1_S164_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-COR1_S164_L001_R2_001.fastq $OUTPUT/16S-1-LIV-COR1_S164_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-COR1_S164_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-COR1_S164_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-COR1_S164_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-COR2_S169_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-COR2_S169_L001_R2_001.fastq $OUTPUT/16S-1-LIV-COR2_S169_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-COR2_S169_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-COR2_S169_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-COR2_S169_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-COR3_S174_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-COR3_S174_L001_R2_001.fastq $OUTPUT/16S-1-LIV-COR3_S174_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-COR3_S174_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-COR3_S174_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-COR3_S174_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-EAU1_S192_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-EAU1_S192_L001_R2_001.fastq $OUTPUT/16S-1-LIV-EAU1_S192_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU1_S192_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-EAU1_S192_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU1_S192_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-EAU2_S197_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-EAU2_S197_L001_R2_001.fastq $OUTPUT/16S-1-LIV-EAU2_S197_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU2_S197_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-EAU2_S197_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU2_S197_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-EAU3_S201_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-EAU3_S201_L001_R2_001.fastq $OUTPUT/16S-1-LIV-EAU3_S201_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU3_S201_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-EAU3_S201_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-EAU3_S201_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-SED1_S178_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-SED1_S178_L001_R2_001.fastq $OUTPUT/16S-1-LIV-SED1_S178_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-SED1_S178_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-SED1_S178_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-SED1_S178_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-SED2_S183_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-SED2_S183_L001_R2_001.fastq $OUTPUT/16S-1-LIV-SED2_S183_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-SED2_S183_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-SED2_S183_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-SED2_S183_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-LIV-SED3_S188_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-LIV-SED3_S188_L001_R2_001.fastq $OUTPUT/16S-1-LIV-SED3_S188_L001_R1.paired.fastq.gz $OUTPUT/16S-1-LIV-SED3_S188_L001_R1.single.fastq.gz $OUTPUT/16S-1-LIV-SED3_S188_L001_R2.paired.fastq.gz $OUTPUT/16S-1-LIV-SED3_S188_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-COR1_S193_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-COR1_S193_L001_R2_001.fastq $OUTPUT/16S-1-TOB-COR1_S193_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-COR1_S193_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-COR1_S193_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-COR1_S193_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-COR2_S198_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-COR2_S198_L001_R2_001.fastq $OUTPUT/16S-1-TOB-COR2_S198_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-COR2_S198_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-COR2_S198_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-COR2_S198_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-COR3_S202_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-COR3_S202_L001_R2_001.fastq $OUTPUT/16S-1-TOB-COR3_S202_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-COR3_S202_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-COR3_S202_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-COR3_S202_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-EAU1_S162_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-EAU1_S162_L001_R2_001.fastq $OUTPUT/16S-1-TOB-EAU1_S162_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU1_S162_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-EAU1_S162_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU1_S162_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-EAU2_S167_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-EAU2_S167_L001_R2_001.fastq $OUTPUT/16S-1-TOB-EAU2_S167_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU2_S167_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-EAU2_S167_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU2_S167_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-EAU3_S172_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-EAU3_S172_L001_R2_001.fastq $OUTPUT/16S-1-TOB-EAU3_S172_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU3_S172_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-EAU3_S172_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-EAU3_S172_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-SED1_S205_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-SED1_S205_L001_R2_001.fastq $OUTPUT/16S-1-TOB-SED1_S205_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-SED1_S205_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-SED1_S205_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-SED1_S205_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-SED2_S209_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-SED2_S209_L001_R2_001.fastq $OUTPUT/16S-1-TOB-SED2_S209_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-SED2_S209_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-SED2_S209_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-SED2_S209_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-1-TOB-SED3_S213_L001_R1_001.fastq $WORKING_DIRECTORY/16S-1-TOB-SED3_S213_L001_R2_001.fastq $OUTPUT/16S-1-TOB-SED3_S213_L001_R1.paired.fastq.gz $OUTPUT/16S-1-TOB-SED3_S213_L001_R1.single.fastq.gz $OUTPUT/16S-1-TOB-SED3_S213_L001_R2.paired.fastq.gz $OUTPUT/16S-1-TOB-SED3_S213_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-COR1_S200_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-COR1_S200_L001_R2_001.fastq $OUTPUT/16S-2-COP-COR1_S200_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-COR1_S200_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-COR1_S200_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-COR1_S200_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-COR2_S204_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-COR2_S204_L001_R2_001.fastq $OUTPUT/16S-2-COP-COR2_S204_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-COR2_S204_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-COR2_S204_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-COR2_S204_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-COR3_S208_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-COR3_S208_L001_R2_001.fastq $OUTPUT/16S-2-COP-COR3_S208_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-COR3_S208_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-COR3_S208_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-COR3_S208_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-EAU1_S179_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-EAU1_S179_L001_R2_001.fastq $OUTPUT/16S-2-COP-EAU1_S179_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-EAU1_S179_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-EAU1_S179_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-EAU1_S179_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-EAU2_S184_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-EAU2_S184_L001_R2_001.fastq $OUTPUT/16S-2-COP-EAU2_S184_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-EAU2_S184_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-EAU2_S184_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-EAU2_S184_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-EAU3_S189_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-EAU3_S189_L001_R2_001.fastq $OUTPUT/16S-2-COP-EAU3_S189_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-EAU3_S189_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-EAU3_S189_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-EAU3_S189_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-SED1_S212_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-SED1_S212_L001_R2_001.fastq $OUTPUT/16S-2-COP-SED1_S212_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-SED1_S212_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-SED1_S212_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-SED1_S212_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-SED2_S216_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-SED2_S216_L001_R2_001.fastq $OUTPUT/16S-2-COP-SED2_S216_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-SED2_S216_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-SED2_S216_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-SED2_S216_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-COP-SED3_S166_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-COP-SED3_S166_L001_R2_001.fastq $OUTPUT/16S-2-COP-SED3_S166_L001_R1.paired.fastq.gz $OUTPUT/16S-2-COP-SED3_S166_L001_R1.single.fastq.gz $OUTPUT/16S-2-COP-SED3_S166_L001_R2.paired.fastq.gz $OUTPUT/16S-2-COP-SED3_S166_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-COR1_S170_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-COR1_S170_L001_R2_001.fastq $OUTPUT/16S-2-LIV-COR1_S170_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-COR1_S170_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-COR1_S170_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-COR1_S170_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-COR2_S175_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-COR2_S175_L001_R2_001.fastq $OUTPUT/16S-2-LIV-COR2_S175_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-COR2_S175_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-COR2_S175_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-COR2_S175_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-COR3_S180_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-COR3_S180_L001_R2_001.fastq $OUTPUT/16S-2-LIV-COR3_S180_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-COR3_S180_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-COR3_S180_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-COR3_S180_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-EAU1_S194_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-EAU1_S194_L001_R2_001.fastq $OUTPUT/16S-2-LIV-EAU1_S194_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU1_S194_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-EAU1_S194_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU1_S194_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-EAU2_S199_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-EAU2_S199_L001_R2_001.fastq $OUTPUT/16S-2-LIV-EAU2_S199_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU2_S199_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-EAU2_S199_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU2_S199_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-EAU3_S203_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-EAU3_S203_L001_R2_001.fastq $OUTPUT/16S-2-LIV-EAU3_S203_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU3_S203_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-EAU3_S203_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-EAU3_S203_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-SED1_S185_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-SED1_S185_L001_R2_001.fastq $OUTPUT/16S-2-LIV-SED1_S185_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-SED1_S185_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-SED1_S185_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-SED1_S185_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-SED2_S190_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-SED2_S190_L001_R2_001.fastq $OUTPUT/16S-2-LIV-SED2_S190_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-SED2_S190_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-SED2_S190_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-SED2_S190_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-LIV-SED3_S195_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-LIV-SED3_S195_L001_R2_001.fastq $OUTPUT/16S-2-LIV-SED3_S195_L001_R1.paired.fastq.gz $OUTPUT/16S-2-LIV-SED3_S195_L001_R1.single.fastq.gz $OUTPUT/16S-2-LIV-SED3_S195_L001_R2.paired.fastq.gz $OUTPUT/16S-2-LIV-SED3_S195_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-COR1_S171_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-COR1_S171_L001_R2_001.fastq $OUTPUT/16S-2-TOB-COR1_S171_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-COR1_S171_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-COR1_S171_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-COR1_S171_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-COR2_S176_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-COR2_S176_L001_R2_001.fastq $OUTPUT/16S-2-TOB-COR2_S176_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-COR2_S176_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-COR2_S176_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-COR2_S176_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-COR3_S181_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-COR3_S181_L001_R2_001.fastq $OUTPUT/16S-2-TOB-COR3_S181_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-COR3_S181_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-COR3_S181_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-COR3_S181_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-EAU1_S207_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-EAU1_S207_L001_R2_001.fastq $OUTPUT/16S-2-TOB-EAU1_S207_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU1_S207_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-EAU1_S207_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU1_S207_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-EAU2_S211_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-EAU2_S211_L001_R2_001.fastq $OUTPUT/16S-2-TOB-EAU2_S211_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU2_S211_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-EAU2_S211_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU2_S211_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-EAU3_S215_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-EAU3_S215_L001_R2_001.fastq $OUTPUT/16S-2-TOB-EAU3_S215_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU3_S215_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-EAU3_S215_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-EAU3_S215_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-SED1_S186_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-SED1_S186_L001_R2_001.fastq $OUTPUT/16S-2-TOB-SED1_S186_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-SED1_S186_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-SED1_S186_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-SED1_S186_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-SED2_S191_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-SED2_S191_L001_R2_001.fastq $OUTPUT/16S-2-TOB-SED2_S191_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-SED2_S191_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-SED2_S191_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-SED2_S191_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-2-TOB-SED3_S196_L001_R1_001.fastq $WORKING_DIRECTORY/16S-2-TOB-SED3_S196_L001_R2_001.fastq $OUTPUT/16S-2-TOB-SED3_S196_L001_R1.paired.fastq.gz $OUTPUT/16S-2-TOB-SED3_S196_L001_R1.single.fastq.gz $OUTPUT/16S-2-TOB-SED3_S196_L001_R2.paired.fastq.gz $OUTPUT/16S-2-TOB-SED3_S196_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-CONTROL_S165_L001_R1_001.fastq $WORKING_DIRECTORY/16S-CONTROL_S165_L001_R2_001.fastq $OUTPUT/16S-CONTROL_S165_L001_R1.paired.fastq.gz $OUTPUT/16S-CONTROL_S165_L001_R1.single.fastq.gz $OUTPUT/16S-CONTROL_S165_L001_R2.paired.fastq.gz $OUTPUT/16S-CONTROL_S165_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
trimmomatic PE -Xmx60G -threads 8 -phred33 $WORKING_DIRECTORY/16S-ZymoBIOMICS_S218_L001_R1_001.fastq $WORKING_DIRECTORY/16S-ZymoBIOMICS_S218_L001_R2_001.fastq $OUTPUT/16S-ZymoBIOMICS_S218_L001_R1.paired.fastq.gz $OUTPUT/16S-ZymoBIOMICS_S218_L001_R1.single.fastq.gz $OUTPUT/16S-ZymoBIOMICS_S218_L001_R2.paired.fastq.gz $OUTPUT/16S-ZymoBIOMICS_S218_L001_R2.single.fastq.gz ILLUMINACLIP:"$ADAPTERFILE":2:30:10 LEADING:30 TRAILING:30 SLIDINGWINDOW:26:30 MINLEN:150
