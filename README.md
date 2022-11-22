# Variant-Calling
This respiratory contains scripts and information of a step by step process to do variant calling from raw fasta files

The first step of the variant calling rpocess is installing all the necessary software and tools. Following is the liost of software used to riun the scripts listed in this respiratory.

Sabre :  https://github.com/najoshi/sabre
Cutadapt: https://cutadapt.readthedocs.io/en/stable/installation.html
BWA : https://github.com/lh3/bwa

BWA: http://bio-bwa.sourceforge.net/
BCFtools, Samtools, and htslib
http://www.htslib.org/download/

#1 step: Demultiplexing

run sabre.sh

Demultiplexing is the process of sorting sequenced reads into separate files for each sample in a sequenced run.

Sabre will help to spit out some info for how many reads were assigned to each barcode, and now there will be fastq files for each sample in your directory.

Sabre is a tool that will demultiplex barcoded reads into separate files. It will work on both single-end and paired-end data in fastq format. It simply compares the provided barcodes with each read and separates the read into its appropriate barcode file, after stripping the barcode from the read (and also stripping the quality values of the barcode bases). If a read does not have a recognized barcode, then it is put into the unknown file.
Sabre also has an option (-m) to allow mismatches of the barcodes.

Sabre also supports gzipped file inputs. Also, since sabre does not use the quality values in any way, it can be used on fasta data that is converted to fastq by creating fake quality values.

Finally, after demultiplexing, sabre outputs a summary of how many records went into each barcode file.

#2. Trimming

run cutad_for.sh

The tool used for this purpose is Cutadapt which is a tool for quality control of high-throughput sequencing reads. The functions include an adapter, primer, and poly-A tail removal.



