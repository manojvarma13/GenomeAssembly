#!/usr/bin/env bash
# trim.sh
function trim {
    nice -n19 java -jar /usr/local/programs/Trimmomatic-0.36/trimmomatic-0.36.jar PE \
    -threads 1 -phred33 \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/SRR522244_1.fastq \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/SRR522244_2.fastq \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Paired/SRR522244_1.fastq \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Unpaired/SRR522244_1.fastq \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Paired/SRR522244_2.fastq \
    /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Unpaired/SRR522244_2.fastq \
    HEADCROP:0 \
    ILLUMINACLIP:/usr/local/programs/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 \
    LEADING:20 TRAILING:20 SLIDINGWINDOW:4:30 MINLEN:36
}
trim 1>trim.log 2>trim.err
