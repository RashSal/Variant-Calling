#!/bin/zsh
DATA=/Users/rashasalih/variant_calling/GBS_data/FC20150701_1.fq
BARCODE=/Users/rashasalih/variant_calling/GBS_data/FC20150701_1.txt

exec &> sabre.log

sabre se -f $DATA -b $BARCODE -u unk.fastq
