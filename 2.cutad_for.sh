#!/bin/bash
cd /Users/rashasalih/variant_calling/GBS_data
ADAP=AGATCGGAA
exec &> cutadapt.log
for i in *.fq;
	do
		cutadapt -a $ADAP -o $i.fastq $i
	done

