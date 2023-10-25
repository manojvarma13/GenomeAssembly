#!/usr/bin/env bash
# runQuast.sh

function runQuast {
python /usr/bin/quast.py \
    --scaffolds \
    --output-dir /home/tekumalla.sa/BINF6308/module-10-manojvarma13/GenomeAssembly/quast_output \
    --threads 4 \
    --gene-finding \
    -R /data/METHODS/Fall/Module10/GCF_000012905.2_ASM1290v2_genomic.fna \
    Rhodo/scaffolds.fasta
}
runQuast 1>runQuast.err 2>runQuast.log
