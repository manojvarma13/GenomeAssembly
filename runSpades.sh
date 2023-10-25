#!/usr/bin/env bash
# runSpades.sh

input_path="Paired/"

function runSpades {
    /usr/local/programs/SPAdes-3.14.1-Linux/bin/spades.py -t 4 -o /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Rhodo \
    -1 /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Paired/SRR522244_1.fastq \
    -2 /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/Paired/SRR522244_2.fastq 
}
runSpades 1>runSpades.log 2>runSpades.err

