#!/usr/bin/env bash

baseUrl='https://ftp.ncbi.nlm.nih.gov/genomes/all/annotation_releases/7460/104/GCF_003254395.2_Amel_HAv3.1'
datafile="GCF_003254395.2_Amel_HAv3.1_genomic.gff.gz"
checksumfile="md5checksums.txt"

wget -nc $baseUrl/$datafile
wget -nc $baseUrl/$checksumfile

# md5sum command
md5sum $datafile
# grep command
grep $datafile $checksumfile
