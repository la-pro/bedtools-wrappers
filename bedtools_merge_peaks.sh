#! bin/bash

# This script is used to find common peaks among replicates of CUTnTAG samples. 
# It uses bedtools merge funcion keeping all the peaks that overlap for a user defined nr of bp TOGETHER WITH PEAKS WHICH DISTANCE IS BELOW A USED DEFINED BP TRESHOLD
# Useful links: - https://bedtools.readthedocs.io/en/latest/content/tools/merge.html
#				- https://www.biostars.org/p/144369/


## Load anaconda environment for bedtools

source activate bedtools_env

# Define working directory
INPUT_PEAKS_DIR=./Files/MACS2_peaks

# Define bp distance for merging peaks

Dist=250

# Create output directory

mkdir -p Files/MACS2_peaks/MergedPeaks
OUT_DIR=MergedPeaks

#---------------------------	HEK BG4
# Define bed files to intersect !REPLACE!:

bed1=HEK_BG4/HEK_BG4_A.bed
bed2=HEK_BG4/HEK_BG4_B.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/HEK_BG4_mergedPeaks.bed


# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"

#---------------------------	HEK iMab
# Define bed files to intersect !REPLACE!:

bed1=HEK_iMab/HEK_iMab_A.bed
bed2=HEK_iMab/HEK_iMab_B.bed
bed3=HEK_iMab/HEK_iMab_C.bed

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/HEK_iMab_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 $INPUT_PEAKS_DIR/$bed3 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"


#---------------------------	HEK iMab
# Define bed files to intersect !REPLACE!:

bed1=HEK_iMab/HEK_iMab_A.bed
bed2=HEK_iMab/HEK_iMab_B.bed
bed3=HEK_iMab/HEK_iMab_C.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/HEK_iMab_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 $INPUT_PEAKS_DIR/$bed3 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME


echo "Merged peaks file $OUTPUT_NAME: done"


#---------------------------	HEK nc
# Define bed files to intersect !REPLACE!:

bed1=HEK_nc/HEK_nc1.bed
bed2=HEK_nc/HEK_nc2.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/HEK_nc_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"

#---------------------------	WDLPS BG4
# Define bed files to intersect !REPLACE!:

bed1=WDLPS_BG4/WDLPS_BG4_A.bed
bed2=WDLPS_BG4/WDLPS_BG4_B.bed
bed3=WDLPS_BG4/WDLPS_BG4_C.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/WDLPS_BG4_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 $INPUT_PEAKS_DIR/$bed3 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"


#---------------------------	WDLPS iMab
# Define bed files to intersect !REPLACE!:

bed1=WDLPS_iMab/WDLPS_iMab_A.bed
bed2=WDLPS_iMab/WDLPS_iMab_B.bed
bed3=WDLPS_iMab/WDLPS_iMab_C.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/WDLPS_iMab_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 $INPUT_PEAKS_DIR/$bed3 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"


#---------------------------	WDLPS nc
# Define bed files to intersect !REPLACE!:

bed1=WDLPS_nc/WDLPS_nc1.bed
bed2=WDLPS_nc/WDLPS_nc2.bed

echo "Processing $bed1"

# Define output name !REPLACE!
OUTPUT_NAME=$INPUT_PEAKS_DIR/$OUT_DIR/WDLPS_nc_mergedPeaks.bed

# First of all the replicte files must be concatenated using cat, then sorted by chromosome and by starting location, finally merged 

cat $INPUT_PEAKS_DIR/$bed1 $INPUT_PEAKS_DIR/$bed2 | sort -k1,1 -k2,2n | mergeBed -d $Dist -i stdin -o collapse -c 4 > $OUTPUT_NAME

echo "Merged peaks file $OUTPUT_NAME: done"

#---------------------------------------
# deactivate conda environment
conda deactivate