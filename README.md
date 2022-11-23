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

#3. Mapping

run mapping.sh

The tool used for this purpose is called bwa (Burrows-Wheeler aligner).

BWA is a software package for mapping low-divergent sequences against a large reference genome, such as the human genome. It consists of three algorithms: BWA-backtrack, BWA-SW and BWA-MEM. The first algorithm is designed for Illumina sequence reads up to 100bp, while the rest two for longer sequences ranged from 70bp to 1Mbp.

#4. Post-processing of MR

run sam2bam.sh

The sam2bam is a high-throughput software tool framework that enables users to significantly speed up pre-processing for next-generation sequencing data, especially on single-node multi-core large-memory systems. The sam2bam provides file format conversion from SAM to BAM, as a basic feature. Additional features such as analyzing, filtering, and converting input data are provided by using plug-in tools, e.g., duplicate marking, which can be attached to sam2bam at runtime.

#5. Variant calling

run samt_var.sh







